import { useRef, useState } from "react";
import styled, { css, keyframes } from "styled-components";

// 1. 진행 방향에 요소가 있는가?
// - 있다면 리렌더 없이 slideContainer
// 2. 없다면, VList가 비어있는가?
// - 비어있다면, 반대변에서 가져와서 새로 리렌더링 후에, slideContainer
// - VList에 요소가 남았다면 pop or shift해서 방향에 맞게 추가하고 리렌더링 후에 slideContanier

const Carousel = ({ children: items, itemsPerPeice, onClickItem }) => {
  const virtureSlides = useRef(createVirtureSlides(items, itemsPerPeice));
  const initialSlide = virtureSlides.current.shift();
  const [realSlides, setRealSlieds] = useState([initialSlide]);

  const container = useRef();
  const currentSlideIndex = useRef(0);
  const direction = useRef("none");

  const move = (dir) => {
    if (isThereItem(dir)) {
      slideContainer(dir);
      return;
    }
    const newSlides = isEmptyVirtureSlides()
      ? getMovedSlides(dir)
      : getAddedSlides();

    setRealSlieds((newSlides) => newSlides);

    if (dir === "prev") {
      currentSlideIndex.current -= 1;
      direction.current = "prev";
      //   setRealSlieds([newSlide, ...realSlides]);
    } else {
      currentSlideIndex.current += 1;
      direction.current = "next";
      //   setRealSlieds([...realSlides, newSlide]);
    }
  };
  const getMovedSlides = (dir) => {
    let newSlides = [...realSlides];
    if (dir === "prev") {
      const opposite = newSlides.current.pop();
      newSlides.unshift(opposite);
    } else {
      const opposite = newSlides.current.shift();
      newSlides.push(opposite);
    }
    return newSlides;
  };
  const getAddedSlides = () => {};
  const slideContainer = (dir) => {
    container.current.style.transform =
      dir === "prev" ? "translate(100%)" : "translate(-100%)";
  };
  const renderList = () => {
    const list = realSlides;
    return list.map((slide) => {
      return (
        <Slide>
          {slide.map((item) => (
            <SlideItem>{item}</SlideItem>
          ))}
        </Slide>
      );
    });
  };
  const isThereItem = (direction) => {
    if (direction === "prev") {
      return currentSlideIndex !== 0;
    } else {
      return currentSlideIndex !== realSlides.length - 1;
    }
  };
  const isEmptyVirtureSlides = () => {
    return virtureSlides.current.length === 0;
  };
  return (
    <CarouselWrapper>
      <Button prev onClick={() => move("prev")} />
      <CarouselContainer ref={container} direction={direction.current}>
        {renderList()}
      </CarouselContainer>
      <Button next onClick={() => move("next")} />
    </CarouselWrapper>
  );
};

const createVirtureSlides = (items, itemsPerPeice) => {
  return items.reduce((result, item, index) => {
    const [i, j] = divmod(index, itemsPerPeice);
    result[i] ? (result[i][j] = item) : (result[i] = [item]);
    return result;
  }, []);
};

const divmod = (a, b) => {
  return [parseInt(a / b), a % b];
};
const moveToPrev = keyframes`
    from{
    transform: translateX(0px);
    }to{
    transform: translateX(100%);
    }; 
`;

const moveToNext = keyframes`
    from{
    transform: translateX(100%);
    }to{
    transform: translateX(0);
    }; 
`;
const CarouselWrapper = styled.div`
  background-color: #b5b5b5;
  /* overflow: hidden; */
  position: relative;
`;
const CarouselContainer = styled.div`
  transition: all 1s ease;
  display: flex;
  ${({ direction }) => {
    if (direction === "none") return;
    return direction === "prev"
      ? css`
          animation: ${moveToPrev} 1s;
        `
      : css`
          animation: ${moveToNext} 1s;
        `;
  }}
`;
const Slide = styled.ul`
  background-color: #777777;
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
