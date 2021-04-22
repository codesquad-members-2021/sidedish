import React, { useState } from 'react';
import styled from 'styled-components';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';

const Carousel = ({ children, wrapperWidth, itemWidth, maxItem }) => {
  const [locationX, setLocationX] = useState(0);
  const [currIdx, setCurrIdx] = useState(0);

  const handleClickPrev = () => {
    const possibleMove = currIdx >= maxItem ? maxItem : currIdx;
    if (currIdx > 0) {
      setLocationX(locationX + itemWidth * possibleMove);
      setCurrIdx(currIdx - possibleMove);
    }
  };
  const handleClickNext = () => {
    const itemCount = children.length - 1;
    const possibleMove =
      itemCount - (currIdx + maxItem) >= maxItem ? maxItem : itemCount - (currIdx + maxItem);
    if (currIdx < itemCount - possibleMove) {
      setLocationX(locationX - itemWidth * possibleMove);
      setCurrIdx((currIdx) => currIdx + possibleMove);
    }
  };

  return (
    <StyledCarousel wrapperWidth={wrapperWidth} locationX={locationX} currIdx={currIdx}>
      <IoChevronBackSharp onClick={handleClickPrev} className="leftArrow arrow" />
      <div className="carouselWrapper">
        <div className="carouselList">{children}</div>
      </div>
      <IoChevronForwardSharp onClick={handleClickNext} className="rightArrow arrow" />
    </StyledCarousel>
  );
};

export default Carousel;

const StyledCarousel = styled.div`
  position: relative;

  .carouselWrapper {
    min-width: ${({ wrapperWidth }) => `${wrapperWidth}px`};
    overflow: hidden;
    z-index: 100;
  }
  .carouselList {
    display: flex;
    transition: all 0.5s;
    transform: ${({ locationX }) => `translateX(${locationX}px)`};
  }
  .leftArrow {
    position: absolute;
    top: 50%;
    left: -40px;
    opacity: ${({ currIdx }) => (currIdx === 0 ? '0.5' : '1')};
  }
  .rightArrow {
    position: absolute;
    top: 50%;
    right: -40px;
  }
  .arrow:hover {
    color: red;
  }
`;

const CarouselArrow = styled.div`
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: space-between;
  top: 0;
  left: -4%;
  width: 108%;
  height: 100%;
  font-size: 1.2rem;
`;
