import React from "react";
import styled from "styled-components";
import Main from "./Components/Main/Main";
import Header from "./Components/Header/Header";
const GlobalStyle = styled.div`
padding : 50px 80px;
`
const App = () => {
  return (
    <GlobalStyle>
      <Header />
      <Main />
    </GlobalStyle>
  );
};

export default App;
