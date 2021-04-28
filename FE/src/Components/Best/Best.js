import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import TabContent from "./TabContent";
import TabButton from "./TabButton";
import axios from "axios";

const BestTitle = styled.h2`
  margin-top: 80px;
  margin-bottom: 32px;
`;

const TabCotainer = styled.div`
  display: flex;
  flex-direction: column;
  position: relative;
  width: 100%;
  height: 678px;
  background-color: transparent;
  margin: auto 0;
  word-break: break-all;
  border-top: 0px;
`;

const Box = styled.div`
  width: 1280px;
  margin: 0 auto;
`;

const Best = ({ modal, setModal, ModalData, setModalData }) => {
  const [toggleState, setToggleState] = useState(1);

  const toggleTab = (index) => {
    setToggleState(index);
  };

  //fetch
  const [Food, setFood] = useState([]);
  const mainRef = useRef(null);

  useEffect(() => {
    const fetchData = async () => {
      const data = await axios("/products/best").then((res) => res.data.data);
      setFood(data);
    };
    fetchData();
  }, []); // eslint-disable-line

  return (
    <Box>
      <BestTitle>후기가 증명한 베스트 반찬</BestTitle>
      <TabCotainer>
        <TabButton
          Food={Food}
          setFood={setFood}
          toggleTab={toggleTab}
          toggleState={toggleState}
        />
        <TabContent
          modal={modal}
          setModal={setModal}
          ModalData={ModalData}
          setModalData={setModalData}
          Food={Food}
          setFood={setFood}
          Ref={mainRef}
          toggleTab={toggleTab}
          toggleState={toggleState}
        />
      </TabCotainer>
    </Box>
  );
};

export default Best;
