import React from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";

const Tab = ({ children, ...props }) => {
  const WrapDiv = styled.div`
    display: flex;
    height: 58px;
  `;

  const WrapSpan = styled.div`
    margin-left: 8px;
    background-color: #f5f5f7;
    border-radius: 5px 5px 0px 0px;
  `;

  return (
    <WrapDiv>
      <WrapSpan>
        <Span _tabDeact>{props.name}</Span>
      </WrapSpan>
    </WrapDiv>
  );
};

export default Tab;
