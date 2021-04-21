import "./style/reset.css";
import { createGlobalStyle, ThemeProvider } from "styled-components";
import theme from './style/theme';
import Header from "./header/Header";

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
  </ThemeProvider>
);

export default App;