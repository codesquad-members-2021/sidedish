import React from 'react';
import styled from 'styled-components';
import Image from '../../atoms/Image';
import Span from '../../atoms/Span';
import TagBox from '../../molecules/TagBox';

const Div = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  width: 308px;
  height: 412px;
  margin: 0px 16px;
  cursor: pointer;
`;

const FlexDiv = styled.div`
  display: flex;
  justify-content: flex-start;
`;

const onClick = () => {};

const MediumCard = ({ children, ...props }) => {
  return (
    <Div onClick={onClick}>
      <Image src={props._image} />
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

export default MediumCard;
