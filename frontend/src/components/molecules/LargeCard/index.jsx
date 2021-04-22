import React from "react";
import styled from "styled-components";
import Image from "../../atoms/Image";
import Span from "../../atoms/Span";

const Div = styled.div`
  display: flex;
  flex-direction: column;
  width: 308px;
`;

const FlexDiv = styled.div`
  display: flex;
  justify-content: flex-start;
`;

const LargeCard = ({ children, ...props }) => {
  return (
    <Div>
      <Image />
      <Span _title>안녕</Span>
      <Span _description>안녕</Span>
      <FlexDiv>
        <Span _nPrice>안녕</Span>
        <Span _sPrice>안녕</Span>
      </FlexDiv>
    </Div>
  );
};

export default LargeCard;
