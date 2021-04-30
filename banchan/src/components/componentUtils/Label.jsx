import React from "react";
import styled from "styled-components";
import { LABEL_TYPE } from "../../utils/variables.js";
// import theme from "./styles/theme.js";

const Label = ({ badgeName }) => (
  <StyledLabel type={LABEL_TYPE[badgeName]}>{badgeName}</StyledLabel>
);

const StyledLabel = styled.span`
  padding: 4px 16px;
  border-radius: ${({ theme }) => theme.borders.radius};
  color: ${({ theme }) => theme.colors.white};
  font-size: ${({ theme }) => theme.fontSizes.XS};
  font-weight: bold;
  background: ${({ type, theme }) =>
    type === "EVENT"
      ? theme.colors.green
      : type === "BEST"
      ? theme.colors.pink
      : theme.colors.lightBlue};
  margin-right: 10px;
  margin-top: 20px;
`;

export default Label;
