import "./App.css";
import MainMenu from "./components/mainmenu/MainMenu";
import Category from "./components/category/Category";
import { createGlobalStyle } from "styled-components";
const GlobalStyle = createGlobalStyle`
body{
  width: 1440px;
  font-family: Noto Sans KR;
  margin: 0 auto;
}`;

function App() {
  return (
    <>
      <GlobalStyle />
      <MainMenu />
      <Category />
    </>
  );
}

export default App;
