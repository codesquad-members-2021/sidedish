import React, { useState, useEffect, useLayoutEffect, useRef } from 'react';
import styled from 'styled-components';
import DishItem from 'component/DishItem/DishItem';
import { URL } from 'util/data';
import useFetch from 'hooks/useFetch';
import Carousel from 'component/Carousel/Carousel';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';

const SlideDish = ({ category: { path, title } }) => {
  const ref = useRef();

  const { data: slideData, loading, error } = useFetch({ url: URL[path]() });
  const slideCategory =
    slideData &&
    slideData.body.map((item) => <DishItem key={item.detail_hash} item={item} size="M" />);

  const settings = {
    ref: ref,
    skipItem: 2,
    animationTime: 0.5,
  };

  if (error) throw Error(error);
  return loading ? (
    <div>Loading...</div>
  ) : (
    <SlideContainer>
      <Header>{title}</Header>
      <IoChevronBackSharp
        onClick={() => ref.current.handleClickPrev()}
        className="leftArrow arrow"
      />
      <Carousel {...settings}>{slideCategory}</Carousel>

      <IoChevronForwardSharp
        onClick={() => ref.current.handleClickNext()}
        className="rightArrow arrow"
      />
    </SlideContainer>
  );
};

export default SlideDish;

const SlideContainer = styled.div`
  min-width: 1280px;
  position: relative;

  .arrow {
    position: absolute;
    font-size: 2rem;
    top: 40%;
  }

  .carouselWrapper {
    min-width: 1280px;
  }
  .leftArrow {
    left: -50px;
  }
  .leftArrow:hover {
    color: red;
  }
  .rightArrow {
    right: -50px;
  }
  .rightArrow :hover {
    color: red;
  }
`;

const Header = styled.div`
  color: #333333, 100%;
  font-size: 24px;
  font-weight: bold;
  margin-top: 5rem;
  margin-bottom: 2rem;
`;
