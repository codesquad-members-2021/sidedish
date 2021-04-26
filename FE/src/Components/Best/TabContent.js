import React from "react";
import styled from "styled-components";
import CarouselCard from "../Main/CarouselCard";
import PopUpModal from "../PopUpModal/PopUpModal";
const ContentWrapper = styled.div`
  display: ${(props) => (props.active ? "flex" : "none")};
  align-items: center;
  background-color: #eef4fa;
  border-radius: 0px 5px 5px 5px;
  padding: 40px;
  width: 100%;
  height: 100%;
`;
const CardBlock = styled.div`
  display: flex;
  justify-content: space-between;
`;
const ContentContainer = styled.div`
  height: 620px;
  flex-grow: 1;
`;
const TabContent = ({ Food, toggleState, URL, modal, setModal, ModalData, setModalData }) => {
  return (
    <ContentContainer>
        {modal && (
        <PopUpModal setModal={setModal} ModalData={ModalData} URL={URL} />
      )}
      {Food.map((_, idx) => {
        return (
          <ContentWrapper
            toggleState={toggleState}
            active={toggleState === idx + 1}
          >
            <CardBlock>
              {Food[idx].items.map((v) => {
                return <CarouselCard {...v} setModal={setModal} setModalData={setModalData} size='L' />
      })}
            </CardBlock>
          </ContentWrapper>
        );
      })}
    </ContentContainer>
  );
};

export default TabContent;
