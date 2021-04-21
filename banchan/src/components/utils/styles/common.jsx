import styled from "styled-components";
import theme from "./theme.js";

const Button = styled.button`
  all: unset;
  border-radius: ${theme.borders.radius};
`;

const CenterContainer = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`;

export { Button, CenterContainer };
