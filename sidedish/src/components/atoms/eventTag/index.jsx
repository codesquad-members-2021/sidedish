import React, { useEffect } from 'react';
import styled from 'styled-components';

const EventTagDiv = styled.div`
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  padding: 4px 16px;

  position: absolute;
  width: 97px;
  height: 28px;
  left: 20px;
  top: 20px;

  /* Green */

  background: #82d32d;
  border-radius: 5px;
`;

const EventTagSpan = styled.span`
  position: static;
  width: 65px;
  height: 20px;
  left: 16px;
  top: 4px;

  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 14px;
  line-height: 20px;

  /* White */

  color: #ffffff;
`;

const EventBtn = () => {
  return (
    <>
      <EventTagDiv>
        <EventTagSpan>이벤트특가</EventTagSpan>
      </EventTagDiv>
    </>
  );
};

export default EventBtn;
