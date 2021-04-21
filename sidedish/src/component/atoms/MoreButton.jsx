import React from 'react';
import styled from 'styled-components';

const MoreButton = ({ count, maxCount, handleClick }) => {
  return (
    <StyledMoreBtn onClick={handleClick}>
      {count === maxCount ? '접기' : '더보기'}({count}/{maxCount})
    </StyledMoreBtn>
  );
};

const StyledMoreBtn = styled.div`
  min-width: 1320px;
  margin-top: 10px;
  height: 80px;
  background-color: ${({ theme: { colors } }) => colors.lightGray};
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.2rem;
  font-weight: 700;
  color: #333333;
`;

export default MoreButton;
