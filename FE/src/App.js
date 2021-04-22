import React from "react";
import styled from "styled-components";
import Main from "./Components/Main/Main";
import Header from "./Components/Header/Header";
import All from "./Components/All/All";
const GlobalStyle = styled.div`
  padding: 50px 80px;
`;
const App = () => {
  const URL =
    "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/";

  return (
    <GlobalStyle>
      <Header />
      <Main URL={URL} />
      <All URL={URL} />
    </GlobalStyle>
  );
};

export default App;
