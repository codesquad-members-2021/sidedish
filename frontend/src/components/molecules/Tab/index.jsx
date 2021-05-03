import React from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";

const Tab = ({ children, ...props }) => {
  const TabButton = styled.button`
    display: flex;
    align-items: center;
    justify-content: center;
    height: 58px;
    margin-right: 8px;
    width: 184px;
    background-color: ${(props) => props._backgroundColor};
    border-radius: 5px 5px 0px 0px;
    padding: 0;
    cursor: pointer;
  `;

  if (props.isTabAct === "_tabDeact") {
    return (
      <TabButton _backgroundColor="#f5f5f7" {...props}>
        <Span className="_tabDeact">{props.name}</Span>
      </TabButton>
    );
  } else {
    return (
      <TabButton _backgroundColor="#eef4fa" {...props}>
        <Span className="_tabAct">{props.name}</Span>
      </TabButton>
    );
  }
};

export default Tab;
