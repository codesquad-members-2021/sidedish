import React, { useRef } from 'react';
import styled from 'styled-components';
import DishItem from 'component/DishItem/DishItem';
import { URL } from 'util/data';
import useFetch from 'hooks/useFetch';
import Carousel from 'component/Carousel/Carousel';

const SlideDish = ({ category: { path, title } }) => {
  const carouselRef = useRef();

  const { data: slideData, loading, error } = useFetch({ url: URL[path]() });

  const slideCategory =
    slideData &&
    slideData.body.map((item) => <DishItem key={item.detail_hash} item={item} size="M" />);

  const settings = {
    ref: carouselRef,
    slideToScroll: 2,
    speed: 500,
    defaultArrow: true,
    defaultPaging: true,
  };

  if (error) throw Error(error);
  return loading ? (
    <div>Loading...</div>
  ) : (
    <SlideContainer>
      <Header>{title}</Header>
      <Carousel {...settings}>{slideCategory}</Carousel>
    </SlideContainer>
  );
};

export default SlideDish;

const SlideContainer = styled.div`
  min-width: 1280px;
  position: relative;
`;

const Header = styled.div`
  color: #333333, 100%;
  font-size: 24px;
  font-weight: bold;
  margin-top: 5rem;
  margin-bottom: 2rem;
`;
