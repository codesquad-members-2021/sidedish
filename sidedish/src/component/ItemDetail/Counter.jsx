import React from 'react';
import styled from 'styled-components';
import { IoChevronUp, IoChevronDown } from 'react-icons/io5';

const Counter = ({ count, handleClick }) => {
  return (
    <StyledCounter>
      <div className="counter">1</div>
      <div className="arrow_container">
        <IoChevronUp className="arrow"></IoChevronUp>
        <IoChevronDown className="arrow"></IoChevronDown>
      </div>
    </StyledCounter>
  );
};

export default Counter;

const StyledCounter = styled.div`
  display: flex;
  border: 1px solid gray;

  .counter {
    flex: 2;
    padding: 0.5rem 1.5rem;
    border-right: 1px solid gray;
  }

  .arrow_container {
    display: flex;
    flex-direction: column;
    flex: 1;
  }

  .arrow {
    padding: 0.3rem;
    font-size: 20px;
    font-weight: 700;
  }

  .arrow:last-child {
    border-top: 1px solid gray;
  }
`;
