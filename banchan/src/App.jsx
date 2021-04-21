import "./App.css";
import StateProvider from "./components/StateProvider";
import { createGlobalStyle } from "styled-components";

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
    <>
      <GlobalStyle />
      <StateProvider />
    </>
  );
}

export default App;
