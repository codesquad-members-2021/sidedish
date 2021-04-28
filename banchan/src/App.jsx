import "./App.css";
import StateProvider from "./components/StateProvider";
import { createGlobalStyle } from "styled-components";
import { ThemeProvider } from "styled-components";
import theme from "./components/componentUtils/styles/theme";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Error from "./components/Error";
import Callback from "./components/Callback";
import LoginPage from "./components/LoginPage";

export const GlobalStyle = createGlobalStyle`
  *{
    padding:0; 
    margin:0;
  }

  body{
    font-family: 'Noto Sans KR';
    box-sizing:border-box;
    
  }
  
  ol, ul {
    list-style: none;
  }
`;

function App() {
  return (
    <ThemeProvider theme={theme}>
      <GlobalStyle />
      <Router>
        <Switch>
          <Route exact path="/" component={StateProvider} />
          <Route path="/error" component={Error} />
          <Route path="/callback" component={Callback} />
          <Route path="/login" component={LoginPage} />
        </Switch>
      </Router>
    </ThemeProvider>
  );
}

export default App;
