import styled from "styled-components";
import theme from "../styles/theme";
import { Button } from "../styles/common";
import { BUTTON_TYPE } from "../../../utils/variables";

const IconButton = ({ type, fn, disabled = false, margin = 0 }) => {
  return (
    <StyledIconButton type={type} onClick={fn} disabled={disabled} margin={margin}>
      {BUTTON_TYPE[type]}
    </StyledIconButton>
  );
};

const StyledIconButton = styled(Button)`
  cursor: pointer;
  color: ${(props) => {
    if (props.type === "CLOSE") return props.theme.colors.white;
    if (props.disabled || props.type === "SEARCH") return props.theme.colors.lightGray;
    return props.theme.colors.darkGray;
    // ? props.theme.colors.lightGray
    // : props.type === "CLOSE"
    // ? props.theme.colors.white
    // : props.theme.colors.darkGray}
  }};
  font-size: ${({ type }) => (type === "UP" || type === "DOWN" ? theme.fontSizes.M : "30px")};
  margin: ${({ margin }) => `${margin}px`};
`;

export default IconButton;
