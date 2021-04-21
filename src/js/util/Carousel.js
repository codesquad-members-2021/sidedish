import { useRef, useState } from "react";
import styled, { css, keyframes } from "styled-components";

// 1. 진행 방향에 요소가 있는가?
// - 있다면 리렌더 없이 slideContainer
// 2. 없다면, VList가 비어있는가?
// - 비어있다면, 반대변에서 가져와서 새로 리렌더링 후에, slideContainer
// - VList에 요소가 남았다면 pop or shift해서 방향에 맞게 추가하고 리렌더링 후에 slideContanier

const Carousel = ({ children: items, itemsPerPeice, onClickItem }) => {
  const virtureSlides = useRef(createVirtureSlides(items, itemsPerPeice));
  const initialSlide = virtureSlides.current[0];
  const [realSlides, setRealSlieds] = useState([initialSlide]);
  // virtureSlides를 하나씩 없애면서, 좌로갈때는 translate 100인 상태에서 시작핟록, 그리고 translate에 "현재" 기준에 "더하거나 뺴는" 방식으로 변경
  const container = useRef();
  const currentSlideIndex = useRef(0);
  const direction = useRef("none");

  const move = (dir) => {
    if (isThereItem(dir)) {
      slideContainer(dir);
      currentSlideIndex.current =
        dir === "prev"
          ? currentSlideIndex.current - 1
          : currentSlideIndex.current + 1;
      return;
    }
    const newSlides = isEmptyVirtureSlides()
      ? getMovedSlides(dir)
      : getAddedSlides(dir);
    direction.current = dir;

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
    const newSlide =
      dir === "prev"
        ? virtureSlides.current.pop()
        : virtureSlides.current.shift();

    const newSlides =
      dir === "prev" ? [newSlide, ...realSlides] : [...realSlides, newSlide];

    return newSlides;
  };
  const slideContainer = (dir) => {
    container.current.style.transform =
      dir === "prev" ? "translate(100%)" : "translate(-100%)";
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
