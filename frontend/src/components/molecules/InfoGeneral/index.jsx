import React from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";

const InfoWrapper = styled.div`
  display: flex;
  flex-direction: column;
  width: 440px;
`;
const SingleInfoWrapper = styled.div`
  display: flex;
  width: 440px;
  margin-bottom: 16px;
`;
const LineDiv = styled.div`
  width: 440px;
  height: 1px;
  margin: 8px 0 24px 0;
  background: #e0e0e0;
`;

const InfoGeneral = ({ children, ...props }) => {
  return (
    <InfoWrapper>
      <SingleInfoWrapper>
        <Span className="_detailLabel">적립금</Span>
        <Span className="_detailText">{props.point}</Span>
      </SingleInfoWrapper>
      <SingleInfoWrapper>
        <Span className="_detailLabel">배송정보</Span>
        <Span className="_detailText">{props.delivery_info}</Span>
      </SingleInfoWrapper>
      <SingleInfoWrapper>
        <Span className="_detailLabel">배송비</Span>
        <Span className="_detailText">{props.delivery_fee}</Span>
      </SingleInfoWrapper>
      <LineDiv />
    </InfoWrapper>
  );
};

export default InfoGeneral;
