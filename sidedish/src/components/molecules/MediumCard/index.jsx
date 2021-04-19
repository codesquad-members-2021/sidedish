import React from 'react';
import styled from 'styled-components';
import Image from '../../atoms/image';
import Span from '../../atoms/span';
import EventBtn from '../../atoms/event-tag';

const Div = styled.div`
  display: flex;
  width: 308px;
  font-family: Noto Sans KR;
`;

const MediumCard = ({ src, ...props }) => {
  return (
    <Div>
      <Image />
      <Span
        _display="block"
        _color="#333333"
        _fontSize="16px"
        _fontWeight="400"
      ></Span>
      <Span
        _display="block"
        _color="#828282"
        _fontSize="14px"
        _fontWeight="400"
      ></Span>
      <PriceSpan></PriceDiv>
      <Span
        _display="block"
        _color="#010101"
        _fontSize="20px"
        _fontWeight="700"
      ></Span>
    </Div>
  );
};

export default Image;
