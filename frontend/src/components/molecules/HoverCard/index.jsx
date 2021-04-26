import React from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";

const Div = styled.div`
  position: absolute;
  width: ${(props) => props._width};
  height: ${(props) => props._height};
  border-radius: 5px;
  background: linear-gradient(0deg, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6));
`;
const Hr = styled.div`
  margin: auto 20px;
  border: 1.5px solid #fff;
`;

const HoverCard = ({ children, ...props }) => {
  if (props.isHover) {
    return (
      <Div {...props}>
        <Span _hoverTitle>짜잔</Span>
        <Hr />
        <Span _hoverTitle>hover</Span>
      </Div>
    );
  } else {
    return null;
  }
};

export default HoverCard;
