import React from 'react';
import Header from 'component/Header/Header';
import Main from 'component/Main/Main';
import './App.css';
import { ThemeProvider, createGlobalStyle } from 'styled-components';
import theme from 'theme';
function App() {
  return (
    <ThemeProvider theme={theme}>
      <GlobalStyles />
      <Header />
      <Main />
    </ThemeProvider>
  );
}

export default App;

const GlobalStyles = createGlobalStyle`
body {
  @import url('https://fonts.googleapis.com/earlyaccess/notosanskr.css');
  font-family: "Noto Sans KR", normal !important;
  }
`;
