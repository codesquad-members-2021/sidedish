import React from "react";
import styled from "styled-components";
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

const InfoGeneral = ({ children, ...props }) => {
  return (
    <>
      <Span className="_innerTitle">{props.title}</Span>
      <Span className="_description">{props.description}</Span>
      <PriceWrapper>
        <TagBox badge={props.badge} />
        <Span className="_sPrice">{props._sPrice}원</Span>
        <Span className="_nPrice">{props._nPrice}원</Span>
      </PriceWrapper>
      <LineDiv />
    </>
  );
};

export default InfoGeneral;
