import React from "react";
import styled from "styled-components";
import Image from "../../atoms/image";
import Span from "../../atoms/span";

const Div = styled.div`
  display: flex;
  width: 308px;
  font-family: Noto Sans KR;
`;

const FlexDiv = styled.div`
  display: flex;
  justify-content: flex-start;
`;

const MediumCard = ({ children, ...props }) => {
  return (
    <Div>
      <Image />
      <Span _title>안녕</Span>
      <Span _description>나는</Span>
      <FlexDiv>
        <Span _nPrice>가격</Span>
        <Span _sPrice>할인각겨</Span>
      </FlexDiv>
    </Div>
  );
};

export default MediumCard;
