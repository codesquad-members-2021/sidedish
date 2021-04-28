import React from 'react';
import styled from 'styled-components';

const OrderButton = () => {
  return (
    <ButtonWrapper>
      <ButtonTitle>주문하기</ButtonTitle>
    </ButtonWrapper>
  );
};

const ButtonWrapper = styled.button`
  width: 100%;
  height: 58px;
  padding: 16px;
  border:none;
  background:#82D32D;
  border-radius:5px;
  &:focus{
    outline:none;
  }
  &:active{
    background: #90e338;
  }
  &:hover{
    cursor: pointer;
  }
`;

const ButtonTitle = styled.span`
  font-size: 18px;
  font-weight: 700;
  line-height: 26px;
  color:#fff;
`;

export default OrderButton;
