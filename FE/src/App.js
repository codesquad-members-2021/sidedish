import React from "react";
import styled from "styled-components";
import Main from "./Components/Main/Main";
import Header from "./Components/Header/Header";
import Best from './Components/Best/Best';
const GlobalStyle = styled.div`
padding : 50px 80px;
`
const App = () => {
  return (
    <GlobalStyle>
      <Header />
      <Best />
      <Main />
    </GlobalStyle>
  );
};

export default App;
