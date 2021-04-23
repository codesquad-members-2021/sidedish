import React from "react";
import styled from "styled-components";
import theme from "./styles/theme.js";
import { LABEL_TYPE } from "./variables.js";

const Label = ({ badgeName }) => <StyledLabel type={LABEL_TYPE[badgeName]}>{badgeName}</StyledLabel>;

const StyledLabel = styled.span`
  padding: 4px 16px;
  border-radius: ${theme.borders.radius};
  color: ${theme.colors.white};
  font-size: ${theme.fontSizes.XS};
  font-weight: bold;
  background: ${({ type }) =>
    type === "EVENT" ? theme.colors.green : type === "BEST" ? theme.colors.pink : theme.colors.lightBlue};
  margin-right: 10px;
  margin-top: 20px;
`;

export default Label;
