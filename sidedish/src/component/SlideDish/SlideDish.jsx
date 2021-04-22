import React, { useState } from 'react';
import styled from 'styled-components';
import DishItem from 'component/DishItem/DishItem';
import { URL } from 'util/data';
import useFetch from 'hooks/useFetch';
import Carousel from 'component/Carousel/Carousel';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';

const SlideDish = ({ category }) => {
  const { data: slideData, loading } = useFetch(URL[category]());
  const slideCategory =
    slideData &&
    slideData.body.map((item) => <DishItem key={item.detail_hash} item={item} size="M" />);

  return loading ? (
    <div>Loading...</div>
  ) : (
    <SlideContainer>
      <Header>모두가 좋아하는 든든한 메인요리</Header>
      <Carousel wrapperWidth={1280} itemWidth={324} maxItem={3}>
        {slideCategory}
      </Carousel>
      {/* <CarouselArrow>
        <IoChevronBackSharp className="leftArrow" />
        <IoChevronForwardSharp className="rightArrow" />
      </CarouselArrow> */}
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
  .leftArrow:hover {
    color: red;
    //속성으로 색깔비교
  }
  .rightArrow:hover {
    color: red;
    //속성으로 색깔비교
  }
`;
