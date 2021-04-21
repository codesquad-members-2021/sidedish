import BestTab from "./component/bestTab/BestTab.jsx";
import Header from "./component/header/Header.jsx";
import ShowMoreBtn from "./component/ShowMoreBtn.jsx";
import SlideContainer from "./component/slideContainer/SlideContainer.jsx";
import GlobalStyle from "./style.js";

function App() {
  return (
    <>
      <GlobalStyle />
      <Header />
      <BestTab />
      <SlideContainer />
      <ShowMoreBtn />
    </>
  );
}

export default App;
