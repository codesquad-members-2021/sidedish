import { useRef, useState } from "react";
import styled, { css, keyframes } from "styled-components";

// 1. 진행 방향에 요소가 있는가?
// - 있다면 리렌더 없이 slideContainer
// 2. 없다면, VList가 비어있는가?
// - 비어있다면, 반대변에서 가져와서 새로 리렌더링 후에, slideContainer
// - VList에 요소가 남았다면 pop or shift해서 방향에 맞게 추가하고 리렌더링 후에 slideContanier

const Carousel = ({ children: items, itemsPerPeice, onClickItem }) => {
  const [initialSlide, virture] = createVirtureSlides(items, itemsPerPeice);
  const virtureSlides = useRef(virture);
  const [realSlides, setRealSlieds] = useState([initialSlide]);

  const container = useRef();
  const currentSlideIndex = useRef(0);

  const move = (dir) => {
    if (isThereItem(dir)) {
      slideContainer(dir);
      changeCurrentIndex(dir);
      return;
    }
    const newSlides = isEmptyVirtureSlides()
      ? getMovedSlides(dir)
      : getAddedSlides(dir);
    setRealSlieds(newSlides);
  };
  const getMovedSlides = (dir) => {
    const newSlides = [...realSlides];
    if (dir === "prev") {
      const opposite = newSlides.pop();
      newSlides.unshift(opposite);
    } else {
      const opposite = newSlides.shift();
      newSlides.push(opposite);
    }

    return newSlides;
  };
  const getAddedSlides = (dir) => {
    console.log("add");
    const newSlide =
      dir === "prev"
        ? virtureSlides.current.pop()
        : virtureSlides.current.shift();

    const newSlides =
      dir === "prev" ? [newSlide, ...realSlides] : [...realSlides, newSlide];

    return newSlides;
  };
  const changeCurrentIndex = (dir) => {
    currentSlideIndex.current =
      dir === "prev"
        ? currentSlideIndex.current - 1
        : currentSlideIndex.current + 1;
  };
  const slideContainer = (dir) => {
    const i = currentSlideIndex.current;
    container.current.style.animation =
      dir === "prev" ? `${moveToPrev} 1s` : "translate(-100%)";
  };
  const renderList = () => {
    const list = realSlides;
    return list.map((slide, index) => {
      return (
        <Slide key={index}>
          {slide.map((item, index) => (
            <SlideItem key={index}>{item}</SlideItem>
          ))}
        </Slide>
      );
    });
  };
  const isThereItem = (direction) => {
    if (direction === "prev") {
      return currentSlideIndex.current !== 0;
    } else {
      return currentSlideIndex.current !== realSlides.length - 1;
    }
  };
  const isEmptyVirtureSlides = () => {
    return virtureSlides.current.length === 0;
  };
  return (
    <CarouselWrapper>
      <Button prev onClick={() => move("prev")} />
      <CarouselContainer ref={container} current={currentSlideIndex.current}>
        {renderList()}
      </CarouselContainer>
      <Button next onClick={() => move("next")} />
    </CarouselWrapper>
  );
};

const createVirtureSlides = (items, itemsPerPeice) => {
  const newItems = items.reduce((result, item, index) => {
    const [i, j] = divmod(index, itemsPerPeice);
    result[i] ? (result[i][j] = item) : (result[i] = [item]);
    return result;
  }, []);
  return [newItems.shift(), newItems];
};

const divmod = (a, b) => {
  return [parseInt(a / b), a % b];
};
const moveToPrev = keyframes`
    from{
    transform: translateX(-100%);
    }to{
    transform: translateX(0);
    }; 
`;

const moveToNext = (current) => keyframes`
    from{
    transform: translateX(${current * 100 + 100}%);
    }to{
    transform: translateX(${current * 100}%);
    }; 
`;
const CarouselWrapper = styled.div`
  background: #b5b5b5;
  position: relative;
`;
const CarouselContainer = styled.div`
  display: flex;
  /* transition: all 1s ease; */
  /* ${({ direction, current }) => {
    if (direction === "none") return;
    return direction === "prev"
      ? css`
          animation: ${moveToPrev} 1s;
        `
      : css`
          animation: ${moveToNext(current)} 1s;
        `;
  }}; */
`;
const Slide = styled.ul`
  background: #777777;
  display: flex;
  width: 100%;
  flex: 1 0 auto;
  padding: 0;
`;
const SlideItem = styled.li`
  list-style-type: none;
  width: 100%;
`;
const Button = styled.div`
  position: absolute;
  width: 50px;
  height: 50px;
  background: orange;
  top: 0;

  ${(props) => css`
    ${props.prev &&
    css`
      left: 10px;
    `}
    ${props.next &&
    css`
      right: 10px;
    `}
  `}
`;
export default Carousel;
