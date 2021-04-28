import "./style/reset.css";
import { createGlobalStyle, ThemeProvider } from "styled-components";
import theme from "./style/theme";
import Header from "./header/Header";
import SubContents from "./subContents/SubContents";
import Detail from "./detail/Detail";
import { SideDishStore } from "./utilComponent/SideDishStore";
import MainContentsContainer from "./mainContents/MainContentsContainer";

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
      <MainContentsContainer />
      <SubContents />
      <Detail />
    </SideDishStore>

  </ThemeProvider>
);

export default App;
