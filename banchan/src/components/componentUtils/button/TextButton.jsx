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
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
`;

export default TextButton;
