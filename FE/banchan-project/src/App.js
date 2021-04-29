import { useState } from "react";
import GlobalStyles from "./Styles/GlobalStyles";
import MainItems from "./MainItems/MainItems.jsx";
import Header from "./Header/Header";
import BestItems from "./BestItems/BestItems";
import DetailModal from "./DetailModal/DetailModal";

const App = () => {
  const [detailUrl, setDetailUrl] = useState(null);
  const [modalFlag, setModalFlag] = useState(false);

  const handleClickCard = async detail_url => {
    setDetailUrl(detail_url);
    await handleModalFlag();
    setModalFlag(true);
  };

  const handleModalFlag = () => {
    modalFlag === true ? setModalFlag(false) : setModalFlag(true);
  };

  return (
    <div className="App">
      <div className="container">
        <GlobalStyles />
        <Header />
        <BestItems handleClickCard={handleClickCard} />
        <MainItems handleClickCard={handleClickCard} />
        <DetailModal
          detailUrl={detailUrl}
          modalFlag={modalFlag}
          handleModalFlag={handleModalFlag}
          handleClickCard={handleClickCard}
        />
      </div>
    </div>
  );
};

export default App;
