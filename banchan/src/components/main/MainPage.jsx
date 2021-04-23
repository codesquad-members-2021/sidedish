import TabSection from './tab/TabSection';
import CarouselSectionList from './CarouselSectionList';
import { useState } from 'react';
import styled from 'styled-components';
import { CenterContainer } from '../utils/styles/common';

const MainPage = (props) => {
  const [modalState, setModalState] = useState(false);

  const handleModal = (product) => {
    setModalState(true);
  };

  return (
    <>
      <TabSection onModal={handleModal} />
      <CarouselSectionList onModal={handleModal} />
      {modalState && (
        <ModalBackground>
          <ModalContainer>
            <Modal />
            <button onClick={() => setModalState(false)}>X</button>
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

const Modal = styled.div`
  background: white;
  width: 960px;
  height: 1076px;
`;

export default MainPage;
