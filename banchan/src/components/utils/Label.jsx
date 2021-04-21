import React from "react";
import styled from "styled-components";
import theme from "./styles/theme.js";
import { LABEL_TYPE } from "./variables.js";

const Label = ({ type }) => (
  <StyledLabel type={type}>{LABEL_TYPE[type]}</StyledLabel>
);

const StyledLabel = styled.span`
  padding: 4px 16px;
  border-radius: ${theme.borders.radius};
  color: ${theme.colors.white};
  font-size: ${theme.fontSizes.XS};
  font-weight: bold;
  background: ${({ type }) =>
    type === "EVENT" ? theme.colors.green : theme.colors.lightBlue};
`;

export default Label;
