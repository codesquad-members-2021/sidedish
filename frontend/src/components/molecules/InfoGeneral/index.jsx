import React from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";

const InfoWrapper = styled.div`
  display: flex;
  flex-direction: column;
  /* align-items: flex-start; */
  padding: 0px;
  width: 440px;
  /* height: 124px; */
`;

const SingleInfoWrapper = styled.div`
  display: flex;
  /* align-items: flex-start; */
  width: 440px;
  height: 46px;
  margin: 16px 0px;
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
    </InfoWrapper>
  );
};

export default InfoGeneral;
