import React from 'react';
import styled from 'styled-components';
import Image from '../../atoms/Image';
import Span from '../../atoms/Span';
import TagBox from '../../molecules/TagBox';

const Div = styled.div`
  display: flex;
  flex-direction: column;
  width: 380px;
  height: 540px;
  margin: 0px 12px;
`;

const FlexDiv = styled.div`
  display: flex;
  justify-content: flex-start;
  margin: 8px 0;
`;

const LargeCard = ({ children, ...props }) => {
  return (
    <Div>
      <Image src={props._image} _width="384px" />
      <Span _title>{props._title}</Span>
      <Span _description>{props._description}</Span>
      <FlexDiv>
        <Span _sPrice>{props._sPrice}</Span>
        <Span _nPrice>{props._nPrice}</Span>
      </FlexDiv>
      <TagBox _badge={props._badge} />
    </Div>
  );
};

export default LargeCard;
