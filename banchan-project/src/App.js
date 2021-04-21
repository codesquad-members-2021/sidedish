import MainItems from "./MainItems/MainItems.jsx";
import Header from "./Header/Header";
import BestItems from "./BestItems/BestItems";

const App = () => {
  return (
    <div className="App">
      <MainItems />
      <Header></Header>
      <BestItems></BestItems>
    </div>
  );
};

export default App;
