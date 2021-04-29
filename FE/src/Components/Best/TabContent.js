import React from "react";
import styled from "styled-components";
import CarouselCard from "../Carousel/CarouselCard";
import PopUpModal from "../PopUpModal/PopUpModal";

const ContentWrapper = styled.div`
  display: ${(props) => (props.active ? "flex" : "none")};
  /* align-items: center; */
  justify-content: center;
  background-color: #eef4fa;
  border-radius: 0px 5px 5px 5px;
  /* padding: 40px; */
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

const TabContent = ({
  Food,
  toggleState,
  modal,
  setModal,
  ModalData,
  setModalData,
}) => {
  const Modal = () => {
    let result = Food.map((v) => v.items).reduce(
      (acc, cur) => (acc = acc.concat(cur))
    );
    for (const i of result) {
      if (i.detailHash === ModalData[0]) {
        return (
          <PopUpModal setModal={setModal} ModalData={ModalData} best={"best"} />
        );
      }
    }
    return null;
  };
  return (
    <ContentContainer>
      {modal && Modal()}
      {Food.map((_, idx) => {
        return (
          <ContentWrapper
            key={idx}
            toggleState={toggleState}
            active={toggleState === idx + 1}
          >
            <CardBlock>
              {Food[idx].items.map((v, idx) => {
                return (
                  <CarouselCard
                    {...v}
                    key={idx}
                    setModal={setModal}
                    setModalData={setModalData}
                    best={"best"}
                  />
                );
              })}
            </CardBlock>
          </ContentWrapper>
        );
      })}
    </ContentContainer>
  );
};

export default TabContent;
