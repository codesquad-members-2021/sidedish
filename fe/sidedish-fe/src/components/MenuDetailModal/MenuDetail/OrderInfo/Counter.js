import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import UpBtnSvg from '../../../../rsc/svg/upbtn.svg';
import DownBtnSvg from '../../../../rsc/svg/downbtn.svg';

const StyledCounter = styled.div`
  display: flex;
  width: 55px;
  text-align: center;
  border: 1px solid #DDDDDD;

  .count {
    flex: 4;
    padding: 4px 0;
    font-size: 14px;
    line-height: 20px;
    color: #4F4F4F;
  }

  .btn-cont {
    flex: 1;
    display: flex;
    flex-direction: column;
    border-left: 1px solid #DDDDDD;
  }
`;

const ControlBtn = styled.button`
  flex: 1;
  display: flex;
  align-items: center;
  justify-items: center;
  align-self: ${props => props.down ? "flex-end" : "flex-start"};
  border: none;
  border-top: ${props => props.down ? "1px solid #DDDDDD" : "none"};
  background-color: transparent;

  &:disabled {
    background-color: #DDDDDD;
  }

  &:not(:disabled):hover {
    background-color: #EEEFFF;
  }
`;

function Counter({ onChangeCount }) {
  const [count, setCount] = useState(1);

  useEffect(() => {
    onChangeCount?.(count);
  }, [count]);

  const handleClickUpBtn = () => {
    setCount(count + 1);
  }

  const handleClickDownBtn = () => {
    setCount(count - 1);
  }

  return (
    <StyledCounter>
      <div className="count">{count}</div>
      <div className="btn-cont">
        <ControlBtn onClick={handleClickUpBtn}>
          <img src={UpBtnSvg}/>
        </ControlBtn>
        <ControlBtn down disabled={count === 1} onClick={handleClickDownBtn}>
          <img src={DownBtnSvg}/>
        </ControlBtn>
      </div>
    </StyledCounter>
  );
}

export default Counter;
