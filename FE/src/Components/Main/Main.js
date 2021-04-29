import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import axios from "axios";
import Carousel from "./Carousel";
import PopUpModal from "../PopUpModal/PopUpModal";
import CarouselButton from "./CarouselButton";
const Main = ({ modal, setModal, ModalData, setModalData }) => {
  const [Food, setFood] = useState([]);
  const mainRef = useRef(null);
  const foodRef = useRef();

  // 꼭 fetchData를 useEffect 안에 넣어놔야 하는가?
  useEffect(() => {
    const fetchData = async () => {
      const data = await axios
        .get("/products/main")
        .then((res) => res.data.data.items);
      setFood(data);
    };
    fetchData();
  }, []); // eslint-disable-line

  const leftSlider = () => {
    foodRef.current.Slider(1);
  };

  const rightSlider = () => {
    foodRef.current.Slider(-1);
  };

  const PopUpCarousel = () => {
    for (const i of Food) {
      if (i.detailHash === ModalData[0]) {
        return (
          <PopUpModal
            setModal={setModal}
            MainTitle={"모두가 좋아하는 든든한 메인요리"}
            Food={Food}
            setModalData={setModalData}
            ModalData={ModalData}
          />
        );
      }
    }
    return null;
  };

  return (
    <CarouselSlide>
      {modal && PopUpCarousel()}
      <CarouselButton Name={"Left"} Slide={leftSlider} />
      <Carousel
        MainTitle={"모두가 좋아하는 든든한 메인요리"}
        Food={Food}
        setFood={setFood}
        Ref={mainRef}
        setModal={setModal}
        ref={foodRef}
        setModalData={setModalData}
      />
      <CarouselButton Name={"Right"} Slide={rightSlider} />
    </CarouselSlide>
  );
};

const CarouselSlide = styled.div`
  display: flex;
  margin: 77px auto 0;
  width: 1370px;
  align-items: center;
`;

export default Main;
