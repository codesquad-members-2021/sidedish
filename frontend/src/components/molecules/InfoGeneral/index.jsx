import React from 'react';
import styled from 'styled-components';
import Span from '../../atoms/Span';
import Tag from '../../atoms/Tag';

const PriceWrapper = styled.div`
  display: flex;
  align-items: flex-end;
  padding: 0px;

  width: 255px;
  height: 35px;

  margin: 16px 0px;
`;

const InfoGeneral = ({ children, ...props }) => {
  return (
    <>
      <Span _innerTitle>{props.title}</Span>
      <Span>{props.description}</Span>
      <PriceWrapper>
        <TagType _badge={props._badge}></TagType>
        <Span _sPrice>{props._sPrice}</Span>
        <Span _nPrice>{props._nPrice}</Span>
      </PriceWrapper>
    </>
  );
};

export default InfoGeneral;
