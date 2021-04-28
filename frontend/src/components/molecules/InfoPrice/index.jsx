import React from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";

const PriceWrapper = styled.div`
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding: 0px;
  width: 227px;
  height: 46px;
`;

const InfoPrice = ({ children, ...props }) => {
  return (
    <PriceWrapper>
      <Span className="_tPriceTitle">총 주문금액</Span>
      <Span className="_tPrice">{props.t_price}</Span>
    </PriceWrapper>
  );
};

export default InfoPrice;
