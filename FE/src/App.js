import React, { useState } from "react";
import Main from "./Components/Main/Main";
import Header from "./Components/Header/Header";
import All from "./Components/All/All";
import Best from "./Components/Best/Best";

const App = () => {
  const [modal, setModal] = useState(false);
  const [ModalData, setModalData] = useState([]);
  const [loginModal, setLoginModal] = useState(false);

  return (
    <div>
      <Header loginModal={loginModal} setLoginModal={setLoginModal} />
      <Best
        modal={modal}
        setModal={setModal}
        ModalData={ModalData}
        setModalData={setModalData}
      />
      <Main
        modal={modal}
        setModal={setModal}
        ModalData={ModalData}
        setModalData={setModalData}
      />
      <All
        modal={modal}
        setModal={setModal}
        ModalData={ModalData}
        setModalData={setModalData}
      />
    </div>
  );
};

export default App;
