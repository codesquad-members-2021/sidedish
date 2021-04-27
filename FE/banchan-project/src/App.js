import GlobalStyles from "./Styles/GlobalStyles";
import MainItems from "./MainItems/MainItems.jsx";
import Header from "./Header/Header";
import BestItems from "./BestItems/BestItems";
import DetailModal from "./DetailModal/DetailModal";

import MainItemsCard from "./MainItems/MainItemsCard/MainItemsCard";
import Slider from "./Slider/Slider";
const App = () => {
  return (
    <div className="App">
      <div className="container">
        <GlobalStyles />
        <Header />
        <BestItems />
        <MainItems />
        {/* <DetailModal /> */}
        <Slider>
          <MainItemsCard />
        </Slider>
      </div>
    </div>
  );
};

export default App;
