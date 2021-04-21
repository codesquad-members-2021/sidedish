import "./App.css";
import MainMenu from "./components/mainmenu/MainMenu";
import Category from "./components/category/Category"
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
      <Category/>
    </>
  );
}

export default App;


  // {/* <Header/>
  // <MainMenu/> */}
  // <Category/>