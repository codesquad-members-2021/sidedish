import React from 'react';
import styled from 'styled-components';

const CarouselPage = ({ current, total }) => {
  return (
    <>
      <StyledPageContainer className="pageContainer">
        <div className="currentPage">{current}</div>
        <div className="pageDivider">/</div>
        <div className="totalPage">{total}</div>
      </StyledPageContainer>
    </>
  );
};

const StyledPageContainer = styled.div`
  position: absolute;
  top: -7%;
  right: 1%;
  display: flex;
  .pageDivider {
    font-size: 0.9rem;
  }
`;

export default CarouselPage;
