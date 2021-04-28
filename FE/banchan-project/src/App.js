import { useState } from "react";
import GlobalStyles from "./Styles/GlobalStyles";
import MainItems from "./MainItems/MainItems.jsx";
import Header from "./Header/Header";
import BestItems from "./BestItems/BestItems";
import DetailModal from "./DetailModal/DetailModal";

import MainItemsCard from "./MainItems/MainItemsCard/MainItemsCard";
import Slider from "./Slider/Slider";
const App = () => {
  const [detailUrl, setDetailUrl] = useState(null);
  const [modalFlag, setModalFlag] = useState(false);

  const handleClickCard = async (detail_url) => {
    setDetailUrl(detail_url)
    await handleModalFlag();
    setModalFlag(true)
  }

  const handleModalFlag = () => {
    modalFlag === true ? setModalFlag(false) : setModalFlag(true)
  };

  return (
    <div className="App">
      <div className="container">
        <GlobalStyles />
        <Header />
        <BestItems />
        <MainItems handleClickCard={handleClickCard} />
        <DetailModal detailUrl={detailUrl} modalFlag={modalFlag} handleModalFlag={handleModalFlag} handleClickCard={handleClickCard} />
        <Slider>
          <MainItemsCard />
        </Slider>
      </div>
    </div>
  );
};

export default App;
