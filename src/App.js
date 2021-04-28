import Header from "./component/header/Header.jsx";
import Main from "./component/main/Main.jsx";
import GlobalStyle from "./common/style.js";
import { ContextProvider } from './component/Context.jsx';
import { DJSlider } from './component/util/dj-slider/DJSlider';

function App() {
  return (
    <ContextProvider>
      <GlobalStyle />
      <Header />
      <Main />
      <DJSlider />
    </ContextProvider>
  );
}


export default App;
