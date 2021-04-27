import "./style/reset.css";
import { createGlobalStyle, ThemeProvider } from "styled-components";
import theme from './style/theme';
import Header from "./header/Header";
import SubContents from "./subContents/SubContents";
import Detail from "./detail/Detail";
import SideDishStore from "./utilComponent/SideDishStore";

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
    <SideDishStore>
      <SubContents />
      <Detail />
    </SideDishStore>
  </ThemeProvider>
);

export default App;