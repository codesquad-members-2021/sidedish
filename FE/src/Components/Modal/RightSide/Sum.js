import React from 'react';
import styled from 'styled-components';

const Sum = ({ sumPrice }) => {
  return (
    <SumWrapper>
      <Description>총 주문금액</Description>
      <Price>{sumPrice}</Price>
    </SumWrapper>
  );
};

const SumWrapper = styled.div`
  display: flex;
  margin: 8px 0 32px 0;
  text-align: end;
  place-content: flex-end;
  place-items: center;
`;

const Description = styled.span`
  color: #828282;
  font-size: 18px;
  font-weight: 700;
  line-height: 26px;
  margin: 0 24px 0 0; 
`;

const Price = styled.span`
  font-size: 32px;
  font-weight: 700;
  line-height: 46px;
  &::after{
    content:"원";
  }
`;

export default Sum;
