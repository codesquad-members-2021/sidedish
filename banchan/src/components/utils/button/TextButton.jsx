import styled from "styled-components";
import theme from "../constant";
import { BUTTON_TYPE, Button } from "./Button";

const TextButton = ({ type, fn }) => {
  return <StyledTextButton onClick={fn}>{BUTTON_TYPE[type]}</StyledTextButton>;
};

const StyledTextButton = styled(Button)`
  font-size: ${theme.fontSizes.M};
  font-weight: bold;
  background: ${theme.colors.green};
  color: ${theme.colors.white};
  width: 440px;
  height: 58px;
  text-align: center;
`;

export default TextButton;
