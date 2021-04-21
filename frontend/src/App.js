import "./App.css";
import MainMenu from "./components/mainmenu/MainMenu";
import Category from "./components/category/Category"
import Header from './components/header/Header'
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
      <Header/>
      <Category/>
    </> 
  );
}

export default App;


  // {/* <Header/>
  // <MainMenu/> */}
  // <Category/>