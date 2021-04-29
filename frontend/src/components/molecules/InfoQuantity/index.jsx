import React, { useState } from "react";
import styled from "styled-components";
import getComma from "../../../util/getComma";
import Span from "../../atoms/Span";
import Icon from "../../atoms/Icon";

const PriceWrapper = styled.div`
  display: flex;
  flex-direction: column;
`;

const QuantityWrapper = styled.div`
  display: flex;
  justify-content: space-between;
`;
const TitleWrapper = styled.div`
  margin-top: 10px;
`;
const ContentWrapper = styled.div`
  display: flex;
  align-items: center;
  text-align: center;
`;
const NumWrapper = styled.div`
  width: 57px;
  height: 43px;
  padding: 13px 24px;
  border: 1px solid #e0e0e0;
  border-right: none;
  font-weight: 400;
  font-size: 16px;
  color: #333;
`;
const IconWrapper = styled.div`
  display: flex;
  flex-direction: column;
`;
const IconDivTop = styled.div`
  padding: 2px 12px;
  border: 1px solid #e0e0e0;
  border-bottom: none;
`;
const IconDivBottom = styled.div`
  padding: 2px 12px;
  border: 1px solid #e0e0e0;
`;
const LineDiv = styled.div`
  width: 440px;
  height: 1px;
  margin: 24px 0;
  background: #e0e0e0;
`;
const SpanWrapper = styled.div`
  display: flex;
  justify-content: flex-end;
  margin-top: 8px;
`;

const InfoQuantity = ({ children, ...props }) => {
  const [number, setNumber] = useState(1);

  const upQuantity = () => {
    setNumber(number + 1);
  };
  const downQuantity = () => {
    if (number <= 1) setNumber(1);
    else setNumber(number - 1);
  };
  return (
    <PriceWrapper>
      <QuantityWrapper>
        <TitleWrapper>
          <Span className="_detailLabel">수량</Span>
        </TitleWrapper>
        <ContentWrapper>
          <NumWrapper>{number}</NumWrapper>
          <IconWrapper>
            <IconDivTop>
              <Icon
                upQuantity={upQuantity}
                _width="6px"
                _heith="3px"
                _color="#333"
                _type="UpIcon"
              />
            </IconDivTop>
            <IconDivBottom>
              <Icon
                downQuantity={downQuantity}
                _width="6px"
                _heith="3px"
                _color="#333"
                _type="DownIcon"
              />
            </IconDivBottom>
          </IconWrapper>
        </ContentWrapper>
      </QuantityWrapper>
      <LineDiv />
      <SpanWrapper>
        <Span className="_tPriceTitle">총 주문금액</Span>
        <Span className="_tPrice">{getComma(props.t_price * number)}</Span>
        <Span className="_otherPrice">원</Span>
      </SpanWrapper>
    </PriceWrapper>
  );
};

export default InfoQuantity;
