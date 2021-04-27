import React, { useState, forwardRef, useImperativeHandle } from 'react';
import styled from 'styled-components';

const Carousel = forwardRef(({ children, itemWidth, maxItem, skipItem, animationTime }, ref) => {
  console.log(ref);
  const [locationX, setLocationX] = useState(0);
  const [currIdx, setCurrIdx] = useState(0);
  const [leftItem, setLeftItem] = useState();

  const handleClickPrev = () => {
    const possibleMove = currIdx >= skipItem ? skipItem : currIdx;
    setLocationX(locationX + itemWidth * possibleMove);
    setCurrIdx(currIdx - possibleMove);
    setLeftItem(leftItem + possibleMove);
  };

  const handleClickNext = () => {
    const totalItemCount = children.length;
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

  return (
    <StyledCarousel
      locationX={locationX}
      animationTime={animationTime}
      currIdx={currIdx}
      leftItem={leftItem}
    >
      <div className="carouselWrapper">
        <div className="carouselList">{children}</div>
      </div>
    </StyledCarousel>
  );
});

export default Carousel;

export const StyledCarousel = styled.div`
  position: relative;

  .carouselWrapper {
    overflow: hidden;
  }
  .carouselList {
    display: flex;
    transition: ${({ animationTime }) => `transform ${animationTime}s`};
    transform: ${({ locationX }) => `translateX(${locationX}px)`};
  }
`;
