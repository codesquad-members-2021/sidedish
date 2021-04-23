import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import Slider from '../../../common/Slider.js';
// import MenuCard from '../../../MenuCard/MenuCard.js';

const StyledRecommendSlider = styled.div`
  background-color: green; // FIXME
  width: 100%;
  height: 100%;
  box-sizing: border-box;
  /* padding: 20px; */
`;

const SlideBtn = styled.button`
  width: 30px; // FIXME
  height: 30px; // FIXME
`;

const TestItem = styled.div`
  width: 100px;
  height: 200px;
  background-color: pink;
  border: 1px solid red;
`;

function RecommendSlider({ data = [0, 1, 2, 3, 4, 5, 6] }) { // FIXME
  // const [data, setData] = setState()
  const sliderRef = useRef();

  const handleClickLeftBtn = () => {
    sliderRef.current.slideToLeft();
  }

  const handleClickRightBtn = () => {
    sliderRef.current.slideToRight();
  }

  const renderItems = () => {
    return data.map((item) => <TestItem/>); // FIXME
  }
  
  return (
    <StyledRecommendSlider>
      <div className="btn-cont">
        <SlideBtn onClick={handleClickLeftBtn}></SlideBtn>
        <SlideBtn onClick={handleClickRightBtn}></SlideBtn>
      </div>
      <Slider ref={sliderRef} itemCntOnView={5} items={renderItems()}/>
    </StyledRecommendSlider>
  )
};

export default RecommendSlider;
