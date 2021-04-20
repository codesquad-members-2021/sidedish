import "./reset.css";
import { createGlobalStyle, ThemeProvider } from "styled-components";
import theme from './common/theme';
import Header from "./header/Header";

const GlobalStyle = createGlobalStyle`
  body {
      width: 1280px;
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
