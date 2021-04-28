import React, { useState, useEffect, useRef, forwardRef, useImperativeHandle } from 'react';
import styled from 'styled-components';
import CarouselItem from 'component/Carousel/CarouselItem';

const Carousel = forwardRef(({ children, maxItem, skipItem, animationTime }, ref) => {
  const [locationX, setLocationX] = useState(0);
  const [currIdx, setCurrIdx] = useState(0);
  const [leftItem, setLeftItem] = useState();
  const [itemWidth, setItemWidth] = useState(0);

  const handleClickPrev = () => {
    const possibleMove = currIdx >= skipItem ? skipItem : currIdx;
    setLocationX(locationX + itemWidth * possibleMove);
    setCurrIdx(currIdx - possibleMove);
    setLeftItem(leftItem + possibleMove);
  };

  const handleClickNext = () => {
    const totalItemCount = children.length;
    // console.log(currIdx);
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

  const CarouselItems = () => {
    return children ? (
      children.map((child) => {
        return <CarouselItem item={child} setItemWidth={setItemWidth} />;
      })
    ) : (
      <div>children 없음</div>
    );
  };

  return (
    <StyledCarousel
      locationX={locationX}
      animationTime={animationTime}
      currIdx={currIdx}
      leftItem={leftItem}
    >
      <div className="container">
        <CarouselItems />
      </div>
    </StyledCarousel>
  );
});

export default Carousel;

export const StyledCarousel = styled.div`
  position: relative;

  .container {
    overflow: hidden;
    display: flex;
    transition: ${({ animationTime }) => `transform ${animationTime}s`};
    transform: ${({ locationX }) => `translateX(${locationX}px)`};
  }
`;
