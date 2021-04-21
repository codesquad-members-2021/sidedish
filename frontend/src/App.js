import "./App.css";
import MainMenu from "./components/mainmenu/MainMenu";
import { createGlobalStyle } from "styled-components";
const GlobalStyle = createGlobalStyle`
body{
  font-family: Noto Sans KR;
  margin: 0 80px;
}`;

function App() {
  return (
    <>
      <GlobalStyle />
      <MainMenu />
    </>
  );
}

export default App;
