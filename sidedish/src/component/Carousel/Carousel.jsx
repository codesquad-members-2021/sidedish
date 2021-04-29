import React, { useState, useEffect, useRef, forwardRef, useImperativeHandle } from 'react';
import styled from 'styled-components';
import CarouselItem from 'component/Carousel/CarouselItem';

const Carousel = forwardRef(({ children, skipItem, animationTime }, ref) => {
  const currRef = useRef();
  const [locationX, setLocationX] = useState(0);
  const [currIdx, setCurrIdx] = useState(0);
  const [leftItem, setLeftItem] = useState();
  const [itemWidth, setItemWidth] = useState(0);
  const maxItem = currRef.current && Math.floor(currRef.current.offsetWidth / itemWidth) + 1;

  const handleClickPrev = () => {
    const possibleMove = currIdx >= skipItem ? skipItem : currIdx;
    setLocationX(locationX + itemWidth * possibleMove);
    setCurrIdx(currIdx - possibleMove);
    setLeftItem(leftItem + possibleMove);
  };

  const handleClickNext = () => {
    const totalItemCount = children.length;
    console.log(currIdx);
    const newLeftItem = totalItemCount - (currIdx + maxItem);
    const possibleMove = newLeftItem >= skipItem ? skipItem : newLeftItem;
    setLocationX(locationX - itemWidth * possibleMove);
    setCurrIdx(currIdx + possibleMove);
    setLeftItem(newLeftItem - possibleMove);
  };

  useImperativeHandle(
    ref,
    () => ({
      handleClickPrev,
      handleClickNext,
    }),
    [handleClickPrev, handleClickNext]
  );

  const carouselItems =
    children &&
    children.map((child) => {
      return <CarouselItem item={child} setItemWidth={setItemWidth} />;
    });

  return (
    <StyledCarousel
      locationX={locationX}
      animationTime={animationTime}
      currIdx={currIdx}
      leftItem={leftItem}
    >
      <div className="container" ref={currRef}>
        {carouselItems}
      </div>
    </StyledCarousel>
  );
});

export default Carousel;

export const StyledCarousel = styled.div`
  position: relative;
  overflow: hidden;

  .container {
    display: flex;
    transition: ${({ animationTime }) => `transform ${animationTime}s`};
    transform: ${({ locationX }) => `translateX(${locationX}px)`};
  }
`;
