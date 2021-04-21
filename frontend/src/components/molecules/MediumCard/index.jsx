import React from 'react';
import styled from 'styled-components';
import Image from '../../atoms/image';
import Span from '../../atoms/span';
import EventTag from '../../atoms/eventTag';

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
      <Span _color="#333333" _fontSize="16px" _fontWeight="400"></Span>
      <Span _color="#828282" _fontSize="14px" _fontWeight="400"></Span>
      <FlexDiv>
        <Span _color="#010101" _fontSize="20px" _fontWeight="700"></Span>
        <Span _color="#BDBDBD" _fontSize="14px" _fontWeight="400"></Span>
      </FlexDiv>
      <FlexDiv>
        <EventTag />
      </FlexDiv>
    </Div>
  );
};

export default MediumCard;
