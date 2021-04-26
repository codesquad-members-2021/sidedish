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
const StrDiv = styled.div`
  width: 89px;
  height: 1px;
  flex-grow: 0;
  margin: 16px 110px;
  background: #ffffff;
`;
const WrapTitle = styled.div`
  display: flex;
  flex-direction: column;
  width: 89px;
  height: 103px;
  align-items: center;
  margin: 140px 148px;
`;

const HoverCard = ({ children, ...props }) => {
  if (props.isHover) {
    return (
      <Div {...props}>
        <WrapTitle>
          <Span _hoverTitle>새벽배송</Span>
          <StrDiv />
          <Span _hoverTitle>전국택배</Span>
        </WrapTitle>
      </Div>
    );
  } else {
    return null;
  }
};

export default HoverCard;
