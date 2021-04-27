import Header from "./component/header/Header.jsx";
import Main from "./component/main/Main.jsx";
import GlobalStyle from "./common/style.js";
import { ContextProvider } from './component/Context.jsx';

function App() {
  return (
    <ContextProvider>
      <GlobalStyle />
      <Header />
      <Main />
    </ContextProvider>
  );
}

export default App;
