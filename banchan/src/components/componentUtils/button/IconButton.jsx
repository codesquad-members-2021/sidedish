import styled from "styled-components";
import theme from "../styles/theme";
import { Button } from "../styles/common";
import { BUTTON_TYPE } from "../../../utils/variables";

const IconButton = ({ type, fn, disabled = false, margin = 0 }) => {
  return (
    <StyledIconButton
      type={type}
      onClick={fn}
      disabled={disabled}
      margin={margin}
    >
      {BUTTON_TYPE[type]}
    </StyledIconButton>
  );
};

const StyledIconButton = styled(Button)`
  cursor: pointer;
  color: ${({ type, disabled, theme }) => {
    if (type === "CLOSE") return theme.colors.white;
    if (disabled || type === "SEARCH") return theme.colors.lightGray;
    return theme.colors.darkGray;
  }};
  font-size: ${({ type }) =>
    type === "UP" || type === "DOWN" ? theme.fontSizes.M : "30px"};
  margin: ${({ margin }) => `${margin}px`};
`;

export default IconButton;
