import Header from "./component/header/Header.jsx";
import Main from "./component/main/Main.jsx";
import GlobalStyle from "./common/style.js";
import { ContextProvider } from "./component/Context.jsx";
import { DicoJsonSlider } from "./component/util/dj-slider/DicoJsonSlider";

function App() {
  return (
    <ContextProvider>
      <GlobalStyle />
      <Header />
      <Main />
      <DicoJsonSlider />
    </ContextProvider>
  );
}

export default App;
