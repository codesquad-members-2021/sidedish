import "./style/reset.css";
import { createGlobalStyle, ThemeProvider } from "styled-components";
import theme from './style/theme';
import Header from "./header/Header";
import SubContents from "./subContents/SubContents";

const GlobalStyle = createGlobalStyle`
  body {
      width: 1440px;
      margin: 0 auto;
  }
`;

const App = () => (
  <ThemeProvider theme={theme}>
    <GlobalStyle />
    <Header />
    <SubContents />
  </ThemeProvider>
);

export default App;