import React, { useState } from 'react';
import styled from 'styled-components';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';

const Carousel = ({ children, itemWidth, maxItem, skipItem }) => {
  const [locationX, setLocationX] = useState(0);
  const [currIdx, setCurrIdx] = useState(0);

  const handleClickPrev = () => {
    const possibleMove = currIdx >= skipItem ? skipItem : currIdx;

    setLocationX(locationX + itemWidth * possibleMove);
    setCurrIdx(currIdx - possibleMove);
  };
  const handleClickNext = () => {
    const lastIdx = children.length - 1;
    const leftItem = lastIdx - (currIdx + maxItem - 1);
    const possibleMove = leftItem >= skipItem ? skipItem : leftItem;

    setLocationX(locationX - itemWidth * possibleMove);
    setCurrIdx((currIdx) => currIdx + possibleMove);
  };

  return (
    <StyledCarousel locationX={locationX} currIdx={currIdx}>
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
    overflow: hidden;
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
