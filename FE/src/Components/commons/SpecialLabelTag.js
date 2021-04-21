import React from 'react';
import styled from 'styled-components';

const SpecialLabelTag = ({ event, scene }) => {
  return (
    <>
      {event && <SpecialLabel bgColor="#82D32D">이벤트 특가</SpecialLabel>}
      {scene && <SpecialLabel bgColor="#86C6FF">현장 특가</SpecialLabel>}
    </>
  );
};


const SpecialLabel = styled.span`
  display: inline-block;
  padding: 4px 16px;
  margin: 0 10px 0 0;
  background: ${({ bgColor }) => bgColor};
  font-size: 14px;
  font-weight: 700;
  line-height: 20px;
  color: #fff;
  border-radius: 5px;
`;

export default SpecialLabelTag;
