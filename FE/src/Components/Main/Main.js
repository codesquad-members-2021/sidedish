import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import axios from "axios";
import Carousel from "./Carousel";
import PopUpModal from "../PopUpModal/PopUpModal";
import CarouselButton from "./CarouselButton";

const Main = ({ URL, modal, setModal }) => {
  const [Food, setFood] = useState([]);
  const [ModalData, setModalData] = useState([]);
  const mainRef = useRef(null);
  const foodRef = useRef();

  // 꼭 fetchData를 useEffect 안에 넣어놔야 하는가?
  useEffect(() => {
    const fetchData = async () => {
      const data = await axios(URL + "main").then((res) => res.data.body);
      setFood(data.concat(data));
    };
    fetchData();
  }, []); // eslint-disable-line

  const slider = (e) => {
    foodRef.current.Slider(e);
  };

  return (
    <CarouselSlide>
      {modal && (
        <PopUpModal setModal={setModal} ModalData={ModalData} URL={URL} />
      )}
      <CarouselButton Name={"Left"} Slide={slider} />
      <Carousel
        MainTitle={"모두가 좋아하는 든든한 메인요리"}
        Food={Food}
        setFood={setFood}
        Ref={mainRef}
        setModal={setModal}
        ref={foodRef}
        setModalData={setModalData}
      />
      <CarouselButton Name={"Right"} Slide={slider} />
    </CarouselSlide>
  );
};

const CarouselSlide = styled.div`
  display: flex;
`;

export default Main;
