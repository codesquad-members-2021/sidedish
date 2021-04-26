import { useState } from "react";
import styled from "styled-components";
import Header from "./Header";
import BestList from "./bestList/BestList";
import Modal from "./Modal/Modal";
import Section from "./Section/Section";
const Wrapper = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  filter: ${(props) =>
    props.isModalOn ? "brightness(40%)" : "brightness(100%)"};
  background-color: #fff;
  margin-left: 40px;
`;

const Main = () => {
  const test = {
    data: {
      top_image: "",
      thumb_images: [""],
      product_description: "",
      point: "",
      delivery_info: "",
      delivery_fee: "",
      prices: ["원"],
      detail_section: [],
    },
  };
  const [modalData, setModalData] = useState(test);
  const [isModalOn, setModalOn] = useState(false);
  return (
    <>
      <Wrapper isModalOn={isModalOn}>
        <Header />
        <BestList setModalData={setModalData} setModalOn={setModalOn} />
        <Section setModalData={setModalData} setModalOn={setModalOn}></Section>
      </Wrapper>
      <Modal
        data={modalData.data}
        isModalOn={isModalOn}
        setModalOn={setModalOn}
      />
    </>
  );
};

export default Main;
