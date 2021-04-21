import React, { useState } from 'react';
import styled from 'styled-components';
import DishItem from 'component/DishItem/DishItem';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';
import { URL } from 'util/data';
import useFetch from 'hooks/useFetch';

const SlideDish = ({ category }) => {
  const { data: slideData, loading } = useFetch(URL[category]());
  const slideCategory =
    slideData &&
    slideData.body
      .slice(0, 4)
      .map((item) => <DishItem key={item.detail_hash} item={item} size="M" />);

  return loading ? (
    <div>Loading...</div>
  ) : (
    <>
      <Header>모두가 좋아하는 든든한 메인요리</Header>
      <StyledSlideList>
        {slideCategory}
        <SlideArrow>
          <IoChevronBackSharp className="leftArrow" />
          <IoChevronForwardSharp className="rightArrow" />
        </SlideArrow>
      </StyledSlideList>
    </>
  );
};
export default SlideDish;

const Header = styled.div`
  color: #333333, 100%;
  font-size: 24px;
  font-weight: bold;
  margin-top: 5rem;
  margin-bottom: 2rem;
`;

const StyledSlideList = styled.div`
  position: relative;
  display: flex;
  min-width: 1320px;
  justify-content: space-between;
`;

const SlideArrow = styled.div`
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: space-between;
  top: 0;
  left: -2.5%;
  width: 105%;
  height: 100%;
  font-size: 1.2rem;
  z-index: -1;
  .leftArrow {
    //속성으로 색깔비교
  }
  .rightArrow {
    //속성으로 색깔비교
  }
`;
