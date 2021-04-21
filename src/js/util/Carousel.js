import { useEffect, useRef, useState } from "react";
import styled, { css } from "styled-components";

const Carousel = ({ children: items, itemsPerPeice, onClickItem }) => {
  const [initialSlide, virture] = createVirtureSlides(items, itemsPerPeice);
  const virtureSlides = useRef(virture);
  const container = useRef();
  const currentSlideIndex = useRef(0);
  const direction = useRef("none");
  const [realSlides, setRealSlieds] = useState([initialSlide]);

  useEffect(() => {
    slideContainer(direction.current);
  });

  const move = (dir) => {
    direction.current = dir;
    if (isThereItem(dir)) {
      changeCurrentIndex(dir);
      slideContainer(dir);
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
      container.current.style.transition = "none";
      container.current.style.transform = "translate(-100%)";
    } else {
      const i = currentSlideIndex.current;
      const opposite = newSlides.shift();
      newSlides.push(opposite);
      container.current.style.transition = "none";
      container.current.style.transform = `translate(-${i * 100 - 100}%)`;
    }

    return newSlides;
  };
  const getAddedSlides = (dir) => {
    let newSlide;
    let newSlides;
    if (dir === "prev") {
      newSlide = virtureSlides.current.pop();
      newSlides = [newSlide, ...realSlides];
      container.current.style.transition = "none";
      container.current.style.transform = "translate(-100%)";
    } else {
      currentSlideIndex.current++;
      newSlide = virtureSlides.current.shift();
      newSlides = [...realSlides, newSlide];
    }

    return newSlides;
  };
  const changeCurrentIndex = (dir) => {
    currentSlideIndex.current =
      dir === "prev"
        ? --currentSlideIndex.current
        : ++currentSlideIndex.current;
  };
  const slideContainer = (dir) => {
    const i = currentSlideIndex.current;
    container.current.style.transition = `all 1s ease`;
    container.current.style.transform = `translate(-${i * 100}%)`;
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
      <CarouselContainer ref={container} dir={direction.current}>
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

const CarouselWrapper = styled.div`
  background: #b5b5b5;
  position: relative;
`;

const CarouselContainer = styled.div`
  display: flex;
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
  top: 50px;

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
