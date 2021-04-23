import styled from "styled-components";
import theme from "../styles/theme";
import { BUTTON_TYPE } from "../variables.js";
import { Button } from "../styles/common";

const IconButton = ({ type, fn }) => {
  return (
    <StyledIconButton type={type} onClick={fn}>
      {BUTTON_TYPE[type]}
    </StyledIconButton>
  );
};

const StyledIconButton = styled(Button)`
  cursor: pointer;
  color: ${({ type }) =>
    type === "UP" || type === "DOWN"
      ? theme.colors.darkGray
      : theme.colors.lightGray};
  font-size: ${({ type }) =>
    type === "UP" || type === "DOWN" ? theme.fontSizes.M : theme.fontSizes.XL};
`;

export default IconButton;
