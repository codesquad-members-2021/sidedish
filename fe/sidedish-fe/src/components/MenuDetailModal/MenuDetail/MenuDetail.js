import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import Preview from './Preview/Preview.js';
import OrderInfo from './OrderInfo/OrderInfo.js';
import RecommendSlider from './RecommendSlider/RecommendSlider.js';

const StyledMenuDetail = styled.div`
  display: flex;
  flex-direction: column;
  width: 700px;
  height: auto;
  box-sizing: border-box;
  background-color: #FFFFFF;
  border-radius: 5px;
  pointer-events: auto;
  
  .upper-cont {
    flex: 6.5;
    display: flex;
    padding: 20px;
  }

  .bottom-cont {
    flex: 3.5;
  }
`;

function MenuDetail({ data }) {
  return (
    <StyledMenuDetail>
      {data &&
        <>
          <div className="upper-cont">
            <Preview imgUrls={data.thumb_images}/>
            <OrderInfo data={data}/>
          </div>
          <div className="bottom-cont">
            <RecommendSlider data={data.detail_section}/>
          </div>
        </>}
    </StyledMenuDetail>
  );
};

export default MenuDetail;
