import { createGlobalStyle } from "styled-components";

const GlobalStyle = createGlobalStyle`
  body {
    overflow-x: hidden;
    color: #333;
  }
  button {
    background-color: transparent;
    border:none;
    cursor: pointer;
  }
  input {
    border: none;
  }
  input:focus {
    outline:none;
  }
  button:focus {
    outline:none;
  }
  * {
    box-sizing: border-box;
  }
`;

export default GlobalStyle;
