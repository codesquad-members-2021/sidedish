import React from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";

const Tab = ({ children, ...props }) => {
  const TabButton = styled.button`
    display: flex;
    height: 58px;
    margin-left: 8px;
    background-color: #f5f5f7;
    border-radius: 5px 5px 0px 0px;
  `;

  return (
    <TabButton {...props}>
      <Span _tabDeact>{props.name}</Span>
    </TabButton>
  );
};

export default Tab;
