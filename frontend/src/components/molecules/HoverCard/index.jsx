import React from "react";
import { WrapDiv, LineDiv, WrapTitle } from "./index.style";
import Span from "../../atoms/Span";

const HoverCard = ({ children, ...props }) => {
  if (props.isHover) {
    return (
      <WrapDiv {...props}>
        <WrapTitle>
          <Span className="_hoverTitle">새벽배송</Span>
          <LineDiv />
          <Span className="_hoverTitle">전국택배</Span>
        </WrapTitle>
      </WrapDiv>
    );
  } else {
    return null;
  }
};

export default HoverCard;
