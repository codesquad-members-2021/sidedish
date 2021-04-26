import React from 'react';
import styled from 'styled-components';
import Span from '../../atoms/Span';
import Icon from '../../atoms/Icon';

const InfosWrapper = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 0px;

  width: 440px;
  height: 124px;
`;

const SingleInfoWrapper = styled.div`
  display: flex;
  align-items: flex-start;

  width: 440px;
  height: 46px;
  margin: 16px 0px;
`;

const Input = styled.input`
  display: flex;
  align-items: flex-start;
  padding: 8px 24px;

  width: 57px;
  height: 41px;

  border: 1px solid #e0e0e0;
`;

const InfoQuantity = ({ children, ...props }) => {
  return (
    <>
      <Span _detailLabel></Span>
      <Input></Input>
    </>
  );
};

export default InfoQuantity;
