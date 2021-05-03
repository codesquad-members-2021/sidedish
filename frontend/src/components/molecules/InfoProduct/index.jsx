import React from "react";
import styled from "styled-components";
import getComma from "../../../util/getComma";
import Span from "../../atoms/Span";
import TagBox from "../../molecules/TagBox";

const PriceWrapper = styled.div`
  display: flex;
  align-items: flex-end;
  width: 255px;
`;
const LineDiv = styled.div`
  width: 440px;
  height: 1px;
  margin: 24px 0;
  background: #e0e0e0;
`;
const FlexWrapper = styled.div`
  display: flex;
`;

const InfoGeneral = ({ children, ...props }) => {
  return (
    <>
      <Span className="_innerTitle">{props.title}</Span>
      <Span className="_description">{props.description}</Span>
      <PriceWrapper>
        <TagBox _badge={props.badge} />
        <FlexWrapper>
          <Span className="_sPrice">{getComma(props._sPrice)}원</Span>
          <Span className="_nPrice">{getComma(props._nPrice)}</Span>
        </FlexWrapper>
      </PriceWrapper>
      <LineDiv />
    </>
  );
};

export default InfoGeneral;
