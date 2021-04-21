import React from "react";
import styled from "styled-components";

const StyledSpan = styled.span`
  display: block;
  color: ${(props) => props._color};
  margin: ${(props) => props._margin};
  font-size: ${(props) => props._fontSize};
  font-weight: ${(props) => props._fontWeight};

  ${(props) =>
    props._title &&
    `
    color:#333;
    font-size:16px;
    font-weight:400;
    margin: 0 8px;
    `}
  ${(props) =>
    props._description &&
    `
    color:#828282;
    font-size: 14px;
    font-weight:400;
    margin: 0 8px;
    `}
    ${(props) =>
    props._nPrice &&
    `
    color:#010101;
    font-size: 20px;
    font-weight:700;
    margin: 8px 0;
    `}
     ${(props) =>
    props._sPrice &&
    `
    color:#BDBDBD;
    font-size: 14px;
    font-weight:400;
    margin: 8px 0;
    text-decoration:line-through;
    `}
`;

const Span = ({ children, ...props }) => (
  <StyledSpan {...props}>{children}</StyledSpan>
);

export default Span;
