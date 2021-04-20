import React from "react";
import styled from "styled-components";
import theme from "./constant";

const LABEL_TYPE = {
  EVENT: "이벤트특가",
  LAUNCH: "런칭특가",
};

const Label = ({ type }) => <StyledLabel type={type}>{LABEL_TYPE[type]}</StyledLabel>;

const StyledLabel = styled.span`
  padding: 4px 16px;
  color: ${theme.colors.white};
  font-size: ${theme.fontSizes.XS};
  font-weight: bold;
  background: ${({ type }) => (type === "EVENT" ? theme.colors.green : theme.colors.lightBlue)};
`;

export default Label;
