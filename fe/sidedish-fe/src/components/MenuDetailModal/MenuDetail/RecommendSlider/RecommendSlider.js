import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import Slider from '../../../common/Slider.js';
// import MenuCard from '../../../MenuCard/MenuCard.js';

import leftBtnSvg from '../../../../rsc/svg/leftbtn.svg';
import rightBtnSvg from '../../../../rsc/svg/rightbtn.svg';
import leftBtnDisabledSvg from '../../../../rsc/svg/leftbtn_disabled.svg';
import rightBtnDisabledSvg from '../../../../rsc/svg/rightbtn_disabled.svg';

const StyledRecommendSlider = styled.div`
  width: 100%;
  height: 100%;
  box-sizing: border-box;
  padding: 20px;
  background: #F5F5F7;

  .title {
    float: left;
    font-weight: 800;
    font-size: 18px;
    line-height: 26px;
    color: #333333;
  }

  .btn-cont {
    float: right;
    margin-bottom: 20px;
    font-size: 14px;
    line-height: 20px;
    color: #333333;
    vertical-align: middle;
  }
`;

const SlideBtn = styled.button`
  padding: 0 6px;
  border: none;
  background-color: transparent;

  &:not(:disabled):hover {
    opacity: 0.7;
  }

  .img {
    pointer-events: none;
    z-index: -1;
  }
`;

const TestItem = styled.div`
  width: 100px;
  height: 200px;
  background-color: pink;
  border: 1px solid red;
`;

function RecommendSlider({ data = [0, 1, 2, 3, 4, 5, 6] }) { // FIXME
  const sliderRef = useRef();
  const [disableLeftBtn, setDisableLeftBtn] = useState();
  const [disableRightBtn, setDisableRightBtn] = useState();

  const handleSlide = () => {
    setDisableLeftBtn(!sliderRef.current.slidableToLeft());
    setDisableRightBtn(!sliderRef.current.slidableToRight());
  }

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
      <div className="title">함께하면 더욱 맛있는 상품</div>
      <div className="btn-cont">
        <SlideBtn disabled={disableLeftBtn} onClick={handleClickLeftBtn}>
          <img src={disableLeftBtn ? leftBtnDisabledSvg : leftBtnSvg} alt="left button"/>
        </SlideBtn>
        {sliderRef.current?.getCurrPage()}/{sliderRef.current?.getTotalPage()}
        <SlideBtn disabled={disableRightBtn} onClick={handleClickRightBtn}>
          <img src={disableRightBtn ? rightBtnDisabledSvg : rightBtnSvg} alt="right button"/>
        </SlideBtn>
      </div>
      <Slider
        ref={sliderRef}
        itemCntOnView={5}
        items={renderItems()}
        onSlide={handleSlide}
        defaultBtn={false}/>
    </StyledRecommendSlider>
  )
};

export default RecommendSlider;
