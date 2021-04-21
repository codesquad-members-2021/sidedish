import BestTab from "./component/bestTab/BestTab.jsx";
import Header from "./component/Header.jsx";
import SlideContainer from "./component/slideContainer/SlideContainer.jsx";
import GlobalStyle from "./style.js";

function App() {
  return (
    <>
      <GlobalStyle />
      <Header />
      <BestTab />
      <SlideContainer />
    </>
  );
}

export default App;
