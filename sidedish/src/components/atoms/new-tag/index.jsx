import React, { useEffect } from 'react';
import styled from 'styled-components';

const newTagDiv = styled.div`
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  padding: 4px 16px;

  position: absolute;
  width: 84px;
  height: 28px;
  left: 137px;
  top: 20px;

  /* Light Blue */

  background: #86c6ff;
  border-radius: 5px;
`;

const newTagSpan = styled.span`
  position: static;
  width: 52px;
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

  /* Inside Auto Layout */

  flex: none;
  order: 0;
  flex-grow: 0;
  margin: 0px 10px;
`;

const eventBtn = () => {
  return (
    <>
      <newTagDiv>
        <newTagSpan>런칭특가</newTagSpan>
      </newTagDiv>
    </>
  );
};

export default eventBtn;
