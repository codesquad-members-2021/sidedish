import './App.css';
import { Header } from "./components/Header/Header.jsx"

function App() {
  return (
    <div className="App">
      <Header></Header>
      <div className="BestMenu">
        <h1>후기가 증명하는 베스트 반찬</h1>
        <div></div>
      </div>
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
