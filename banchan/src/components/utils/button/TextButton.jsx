import styled from "styled-components";
import theme from "../constant";
import { BUTTON_TYPE, Button } from "./Button";

const TextButton = ({ type, fn }) => {
  return (
    <StyledTextButton onClick={fn} type={type}>
      {BUTTON_TYPE[type]}
    </StyledTextButton>
  );
};

const StyledTextButton = styled(Button)`
  font-size: ${theme.fontSizes.M};
  font-weight: bold;
  background: ${(props) => (props.type === "SOLDOUT" ? theme.colors.lightGrayBG : theme.colors.green)};
  color: ${(props) => (props.type === "SOLDOUT" ? theme.colors.lightGray : theme.colors.white)};
  width: 440px;
  height: 58px;
  text-align: center;
`;

export default TextButton;
