import "./App.css";
import StateProvider from "./components/StateProvider";
import { createGlobalStyle } from "styled-components";
import { ThemeProvider } from "styled-components";
import theme from "./components/utils/theme.js";

export const GlobalStyle = createGlobalStyle`
  *{
    padding:0; 
    margin:0;
  }
  body{
    box-sizing:border-box;
  }
  ol, ul {
    list-style: none;
  }
`;

function App() {
  return (
    <ThemeProvider theme={theme}>
      <GlobalStyle />
      <StateProvider />
    </ThemeProvider>
  );
}

export default App;
