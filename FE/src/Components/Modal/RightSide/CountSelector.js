import React from 'react';
import styled from 'styled-components';
import TopArrowButton from 'images/TopArrowButtonDeactive.svg';
import BottomArrowButton from 'images/BottomArrowButtonDeactive.svg';
import DisabledBottomArrowButton from 'images/DisabledBottomArrowButtonDeactive.svg';

const CountSelector = ({ count, handleChangeCount }) => {
  return (
    <CountSelectWrapper>
      <Count>{count}</Count>
      <SelectBox>
        <SelectButton up onClick={handleChangeCount(1)} />
        <SelectButton down onClick={handleChangeCount(-1)} disabled={count === 0} />
      </SelectBox>
    </CountSelectWrapper>
  );
};

const CountSelectWrapper = styled.div`
  display:flex;
  width: 110px;
`;

const Count = styled.div`
  width:88px;
  height: 26px;
  padding: 11px 0;
  border:1px solid #E0E0E0;
  color: #333;
  line-height:23px;
  align-self: center;
  text-align: center;
`;

const SelectBox = styled.div`
  text-align: center;
`;

const SelectButton = styled.button`
  width: 100%;
  height: 25px;
  border:1px solid #E0E0E0;
  background: #fff;
  background-image: url(${({ up, disabled }) => up ? TopArrowButton : !disabled ? BottomArrowButton : DisabledBottomArrowButton});
  &:hover{
    background-color: ${({ disabled }) => !disabled && '#f1f1f1'};
    cursor: pointer;
  }
`;


export default CountSelector;
