import BestTab from "./component/bestTab/BestTab.jsx";
import Header from "./component/header/Header.jsx";
import PopUpContainer from "./component/popUp/PopUpContainer.jsx";
import ShowMoreBtn from "./component/ShowMoreBtn.jsx";
import SlideContainer from "./component/slideContainer/SlideContainer.jsx";
import GlobalStyle from "./style.js";
import { useState } from "react";
import api from "./api.js";

function App() {
  const [toggle, setToggle] = useState(false);
  const [detailData, setDetailData] = useState(null);
  const onPopUpToggle = () => setToggle(!toggle);

  const onFetchDetailData = async (id) => {
    const detailData = await api(`/detail/${id}`);
    if(detailData) {
      setDetailData(detailData);
      onPopUpToggle();
    }
  }

  return (
    <>
      <GlobalStyle />
      <Header />
      <BestTab onFetchDetailData={onFetchDetailData}/>
      <SlideContainer onFetchDetailData={onFetchDetailData}/>
      <ShowMoreBtn />
      {toggle ? <PopUpContainer detailData={detailData} onPopUpToggle={onPopUpToggle}/> : null}
    </>
  );
}

export default App;
