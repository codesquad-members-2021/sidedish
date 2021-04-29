import React from 'react';
import styled from 'styled-components';

import Image from '../../atoms/Image';
import Span from '../../atoms/Span';

const WrapDiv = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  width: 160px;
  height: 242px;
  margin: 0px 8px;
  div,
  span {
    cursor: pointer;
  }
`;

const OtherCard = ({ children, ...props }) => {
  return (
    <WrapDiv>
      <Image src={props._image} _width="160px" />
      <Span className="_login" _margin="8px 0px">
        {props._title}
      </Span>
      <Span className="_otherPrice" _margin="8px 0px">
        {props._price}
      </Span>
    </WrapDiv>
  );
};

export default OtherCard;
