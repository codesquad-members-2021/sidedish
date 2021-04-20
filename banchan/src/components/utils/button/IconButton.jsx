import styled from "styled-components";
import theme from "../constant";
import { BUTTON_TYPE, Button } from "./Button";

const IconButton = ({ type, fn }) => {
  return (
    <StyledIconButton type={type} onClick={fn}>
      {BUTTON_TYPE[type]}
    </StyledIconButton>
  );
};

const StyledIconButton = styled(Button)`
  color: ${({ type }) => (type === "UP" || type === "DOWN" ? theme.colors.darkGray : theme.colors.lightGray)};
  font-size: ${({ type }) => (type === "UP" || type === "DOWN" ? theme.fontSizes.M : theme.fontSizes.XL)};
`;

export default IconButton;
