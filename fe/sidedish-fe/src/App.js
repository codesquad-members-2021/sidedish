import "./App.css";
import { Header } from "./components/Header/Header.jsx";
import { BestMenu } from "./components/BestMenu/BestMenu.jsx";
import { FlexRowContainer } from "./components/common/FlexRowContainer.jsx";
// import {
//   LargeCard,
//   MiddleCard,
//   SmallCard,
// } from "./components/MenuCard/MenuCard.jsx";
import { LargeCard } from "./components/MenuCard/LargeCard";

function App() {
  return (
    <div className="App">
      <Header></Header>
      <BestMenu></BestMenu>
      <FlexRowContainer>
        <LargeCard></LargeCard>
        <LargeCard></LargeCard>
        <LargeCard></LargeCard>
      </FlexRowContainer>
      <div className="MenuSlider">
        <h1>모두가 좋아하는 든든한 메인요리</h1>
        <div></div>
      </div>
      <div className="Category">
        <h1>모든 카테고리보기</h1>
      </div>
    </div>
  );
}

export default App;
