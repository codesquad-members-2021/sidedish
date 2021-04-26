import styled from "styled-components";
import theme from "../styles/theme";
import { Button } from "../styles/common";
import { BUTTON_TYPE } from "../../../utils/variables";

const IconButton = ({ type, fn, disabled = false }) => {
  return (
    <StyledIconButton type={type} onClick={fn} disabled={disabled}>
      {BUTTON_TYPE[type]}
    </StyledIconButton>
  );
};

const StyledIconButton = styled(Button)`
  cursor: pointer;
  color: ${(props) =>
    props.disabled || props.type === "SEARCH"
      ? props.theme.colors.lightGray
      : props.type === "CLOSE"
      ? props.theme.colors.white
      : props.theme.colors.darkGray};
  font-size: ${({ type }) => (type === "UP" || type === "DOWN" ? theme.fontSizes.M : "30px")};
`;

export default IconButton;
