import MainItems from "./MainItems/MainItems.jsx";
import Header from "./Header/Header";
import BestItems from "./BestItems/BestItems";
import DetailModal from "./DetailModal/DetailModal"

const App = () => {
  return (
    <div className="App">
      <MainItems />
      <DetailModal />
      {/* <Header></Header>
      <BestItems></BestItems> */}
    </div>
  );
};

export default App;
