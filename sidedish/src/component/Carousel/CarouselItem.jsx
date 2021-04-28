import React, { useEffect, useRef } from 'react';
import styled from 'styled-components';

const CarouselItem = ({ item, idx, setItemWidth, marginRigthForItem }) => {
  const childRef = useRef();

  useEffect(() => {
    if (idx === 0) setItemWidth(childRef.current.offsetWidth);
  }, []);

  return (
    <StyledCarouselItem ref={childRef} marginRigthForItem={marginRigthForItem}>
      {item}
    </StyledCarouselItem>
  );
};

const StyledCarouselItem = styled.div`
  margin-right: ${({ marginRigthForItem }) => `${marginRigthForItem}px`};
`;

export default CarouselItem;
