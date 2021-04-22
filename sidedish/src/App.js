import React from 'react';
import Header from 'component/Header/Header';
import Main from 'component/Main/Main';
import './App.css';
import { ThemeProvider } from 'styled-components';
import theme from 'theme';
function App() {
  return (
    <ThemeProvider theme={theme}>
      <>
        <Header />
        <Main />
      </>
    </ThemeProvider>
  );
}

export default App;
