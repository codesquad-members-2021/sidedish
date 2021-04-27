import GlobalStyles from "./Styles/GlobalStyles";
import MainItems from "./MainItems/MainItems.jsx";
import Header from "./Header/Header";
import BestItems from "./BestItems/BestItems";
import DetailModal from "./DetailModal/DetailModal";

const App = () => {
  return (
    <div className="App">
      <div className="container">
        <GlobalStyles />
        <Header></Header>
        <BestItems></BestItems>
        <MainItems />
        <DetailModal />
      </div>
    </div>
  );
};

export default App;
