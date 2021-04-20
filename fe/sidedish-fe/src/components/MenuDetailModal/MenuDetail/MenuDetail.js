import React from 'react';
import styled from 'styled-components';
import Preview from './Preview/Preview.js';
import OrderInfo from './OrderInfo/OrderInfo.js';
import RecommendSlider from './RecommendSlider/RecommendSlider.js';

// FIXME: these are images for test
import rvimg from './MOCK_IMGS/redvelvet.png';
import bpimg from './MOCK_IMGS/blackpink.png';

const StyledMenuDetail = styled.div`
  display: flex;
  flex-direction: column;
  width: 500px;
  height: 550px;
  background-color: #FFFFFF;
  pointer-events: auto;
  border-radius: 5px;
  
  .upper-cont {
    flex: 6.5;
    display: flex;
  }

  .bottom-cont {
    flex: 3.5;
  }
`;

function MenuDetail({ data }) {
  return (
    <StyledMenuDetail>
      <div className="upper-cont">
        <Preview imgs={[rvimg, bpimg]} />
        <OrderInfo />
      </div>
      <div className="bottom-cont">
        <RecommendSlider />
      </div>
    </StyledMenuDetail>
  );
};

export default MenuDetail;
