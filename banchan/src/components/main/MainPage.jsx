import { useEffect, useState } from "react";
import styled from "styled-components";
import { CenterContainer } from "../utils/styles/common";
import CarouselSectionList from "./carousel/CarouselSectionList";
import Modal from "./modal/Modal";
import ModalCard from "./modal/ModalCard";

import TabSection from "./tab/TabSection";

const MainPage = (props) => {
  const [modalState, setModalState] = useState(false);
  const [modalData, setModalData] = useState({});
  const [detailDataMap, setDetailDataMap] = useState(new Map());

  useEffect(() => {
    fetch("https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail")
      .then((res) => res.json())
      .then((response) => {
        response.body.forEach((e) => {
          setDetailDataMap(detailDataMap.set(e.hash, e.data));
        });
      });
  }, []);

  const handleModal = (product) => {
    setModalState(true);
    const detailData = detailDataMap.get(product.detail_hash);
    setModalData({ ...product, ...detailData });
  };

  return (
    <>
      <TabSection onModal={handleModal} />
      <CarouselSectionList onModal={handleModal} />
      {modalState && (
        <ModalBackground>
          <ModalContainer>
            <Modal>
              <ModalCard product={modalData} />
            </Modal>
          </ModalContainer>
        </ModalBackground>
      )}
    </>
  );
};

const ModalBackground = styled(CenterContainer)`
  position: fixed;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.4);
  width: 100%;
  height: 100%;
  z-index: 5;
`;

const ModalContainer = styled.div`
  display: flex;
  align-items: flex-start;
`;

export default MainPage;
