import React, { forwardRef, useImperativeHandle, useRef, useState } from 'react';
import styled from 'styled-components';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';

const Carousel = forwardRef(({ children, itemWidth, maxItem, skipItem, animationTime }, ref) => {
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
      {/* <IoChevronBackSharp onClick={handleClickPrev} className="leftArrow arrow" /> */}
      <div className="carouselWrapper">
        <div className="carouselList">{children}</div>
      </div>
      {/* <IoChevronForwardSharp onClick={handleClickNext} className="rightArrow arrow" /> */}
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
  .arrow {
    position: absolute;
    font-size: 2rem;
    top: 40%;
  }
  .leftArrow {
    left: -50px;
    opacity: ${({ currIdx }) => (currIdx === 0 ? '0.3' : '1')};
  }
  .leftArrow:hover {
    color: ${({ currIdx }) => currIdx !== 0 && 'red'};
  }
  .rightArrow {
    right: -50px;
    opacity: ${({ leftItem }) => (leftItem === 0 ? '0.3' : '1')};
  }
  .rightArrow :hover {
    color: ${({ leftItem }) => leftItem !== 0 && 'red'};
  }
`;
