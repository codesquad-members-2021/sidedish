import React from "react";
import styled from "styled-components";

const StyledSpan = styled.span`
  display: block;
  color: ${(props) => props._color};
  margin: ${(props) => props._margin};
  font-size: ${(props) => props._fontSize};
  font-weight: ${(props) => props._fontWeight};
  font-family: Noto Sans KR;
  ${(props) =>
    props._title &&
    `font-size:16px;
    font-weight:400;
    color:#333;
    margin:0 8px;`}
  ${(props) =>
    props._description &&
    `font-size:14px;
    font-weight:400;
    color:#828282;
    margin:0 8px;`}
  ${(props) =>
    props._nPrice &&
    `font-size:20px;
    font-weight:700;
    color:#010101;
    margin:8px 0;`}
  ${(props) =>
    props._sPrice &&
    `font-size:14px;
    font-weight:400;
    color:#BDBDBD;
    margin:8px 0;`}
`;

const Span = ({ children, ...props }) => (
  <StyledSpan {...props}>{children}</StyledSpan>
);

export default Span;
