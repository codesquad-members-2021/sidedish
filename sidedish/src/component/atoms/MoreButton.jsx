import React from 'react';
import styled from 'styled-components';

const MoreButton = ({ count, maxCount, handleClick }) => {
  return (
    <StyledMoreBtn onClick={handleClick}>
      더보기({count}/{maxCount})
    </StyledMoreBtn>
  );
};

const StyledMoreBtn = styled.div``;

export default MoreButton;
