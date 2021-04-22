import React, { useState, useEffect } from 'react';
import styled from 'styled-components';

const StyledSmallInfoContainer = styled.div`
  & > * {
    margin: 10px 0;
  }
`;

const SmallInfo = styled.div`
  display: flex;
  height: auto;

  & > * {
    font-size: 13px;
    line-height: 21px;
  }

  * + * {
    margin-left: 6px;
  }

  .entry {
    flex: 1;
    color: #828282;
  }

  .content {
    flex: 5.5;
    color: #4F4F4F;

    b {
      font-weight: 800;
    }
  }
`;

function SmallInfoContainer({ data }) {
  const strengthText = (text) => {
    const pattern = text.match(/\([^)]*\)/);
    return (
      <>
        {text.slice(0, pattern.index)}
        <b>{pattern[0]}</b>
      </>
    );
  }

  const renderSmallInfos = () => {
    return data.map((info, idx) => {
      const [entry, content] = info;
      return (
        <SmallInfo key={idx}>
          <div className="entry">{entry}</div>
          <div className="content">{entry === '배송비' ? strengthText(content) : content}</div>
        </SmallInfo>
      );
    });
  }

  return (
    <StyledSmallInfoContainer>
      {renderSmallInfos()}
    </StyledSmallInfoContainer>
  )
};

export default SmallInfoContainer;
