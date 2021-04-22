import React, { useState } from 'react';
import styled from 'styled-components';
import TopArrowButton from '../../../images/TopArrowButtonDeactive.svg';
import BottomArrowButton from '../../../images/BottomArrowButtonDeactive.svg';

const CountSelector = () => {
  const [count, setCount] = useState(0);

  const countChangeHandler = (calculatorName) => {
    const isPlus = calculatorName === 'plus';
    if (!isPlus && count === 0) return;
    const calculator = isPlus ? 1 : -1;
    setCount(count + calculator);
  }

  return (
    <CountSelectWrapper>
      <Count>{count}</Count>
      <SelectBox>
        <SelectButton up onClick={() => countChangeHandler('plus')} />
        <SelectButton down onClick={() => countChangeHandler('minus')} />
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
  background-image: url(${({ up }) => up ? TopArrowButton : BottomArrowButton});
  &:focus{
    outline:1px solid #E0E0E0;
  }
  &:hover{
    background: #f1f1f1;
    background-image: url(${({ up }) => up ? TopArrowButton : BottomArrowButton});
    cursor: pointer;
  }
`;


export default CountSelector;
