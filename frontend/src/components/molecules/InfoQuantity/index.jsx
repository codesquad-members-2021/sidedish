import React from 'react';
import styled from 'styled-components';
import Span from '../../atoms/Span';
import Icon from '../../atoms/Icon';

const Input = styled.input`
  display: flex;
  align-items: flex-start;
  padding: 8px 24px;

  width: 57px;
  height: 41px;

  border: 1px solid #e0e0e0;
`;

const IconWrapper = styled.div`
  display: flex;
  flex-direction: column;
`;

const QuantityWrapper = styled.div`
  display: flex;
`;

const InfoQuantity = ({ children, ...props }) => {
  return (
    <>
      <Span className="_detailLabel">수량</Span>
      <QuantityWrapper>
        <Input></Input>
        <IconWrapper>
          <Icon _width="28px" _heith="20px" _color="#E0E0E0" _type="UpIcon" />
          <Icon _width="28px" _heith="20px" _color="#E0E0E0" _type="DownIcon" />
        </IconWrapper>
      </QuantityWrapper>
    </>
  );
};

export default InfoQuantity;
