import styled from "styled-components";
import theme from "../styles/theme";
import { Button } from "../styles/common";
import { BUTTON_TYPE } from "../../../utils/variables";

const TextButton = ({ type, fn, disabled = false }) => {
  return (
    <StyledTextButton onClick={fn} type={type} disabled={disabled}>
      {BUTTON_TYPE[type]}
    </StyledTextButton>
  );
};

const StyledTextButton = styled(Button)`
  font-size: ${theme.fontSizes.M};
  font-weight: bold;
  background: ${(props) => (props.disabled ? theme.colors.lightGrayBG : theme.colors.green)};
  color: ${(props) => (props.disabled ? theme.colors.gray : theme.colors.white)};
  cursor: ${(props) => (props.disabled ? "not-allowed" : "pointer")};
  width: 440px;
  height: 58px;
  text-align: center;
`;

export default TextButton;
