import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import axios from "axios";
import Carousel from "../Main/Carousel";
import PopUpModal from "../PopUpModal/PopUpModal";
import CarouselButton from "../Main/CarouselButton";
const All = ({ modal, setModal, ModalData, setModalData }) => {
  const [soup, setSoup] = useState([]);
  const [side, setSide] = useState([]);
  const [rander, setRander] = useState(false);
  const soupImageRef = useRef();
  const sideImageRef = useRef();
  const soupRef = useRef();
  const sideRef = useRef();

  useEffect(() => {
    const fetchData = async () => {
      const soupData = await axios
        .get("/products/soup")
        .then((res) => res.data.data.items);
      const sideData = await axios
        .get("/products/side")
        .then((res) => res.data.data.items);
      setSoup(soupData);
      setSide(sideData);
    };
    fetchData();
  }, []); // eslint-disable-line

  const randerImage = () => {
    rander ? setRander(false) : setRander(true);
  };

  const soupSlide = (e) => {
    e.target.classList.contains("Left")
      ? soupRef.current.Slider(1)
      : soupRef.current.Slider(-1);
  };

  const sideSlide = (e) => {
    e.target.classList.contains("Left")
      ? sideRef.current.Slider(1)
      : sideRef.current.Slider(-1);
  };

  const PopUpCarousel = () => {
    for (const i of soup) {
      if (i.detailHash === ModalData[0]) {
        return (
          <PopUpModal
            MainTitle={"정성이 담긴 뜨끈한 국물요리"}
            Food={soup}
            setModal={setModal}
            ModalData={ModalData}
            setModalData={setModalData}
          />
        );
      }
    }
    return (
      <PopUpModal
        MainTitle={"식탁을 풍성하게 하는 정갈한 밑반찬"}
        Food={side}
        setModal={setModal}
        ModalData={ModalData}
        setModalData={setModalData}
      />
    );
  };

  return (
    <AllBox>
      {rander && (
        <div>
          {modal && PopUpCarousel()}
          <CarouselSlide>
            <CarouselButton Name={"Left"} Slide={soupSlide} />
            <Carousel
              MainTitle={"정성이 담긴 뜨끈한 국물요리"}
              Food={soup}
              setFood={setSoup}
              Ref={soupImageRef}
              setModal={setModal}
              ref={soupRef}
              setModalData={setModalData}
            />
            <CarouselButton Name={"Right"} Slide={soupSlide} />
          </CarouselSlide>
          <CarouselSlide>
            <CarouselButton Name={"Left"} Slide={sideSlide} />
            <Carousel
              MainTitle={"식탁을 풍성하게 하는 정갈한 밑반찬"}
              Food={side}
              setFood={setSide}
              Ref={sideImageRef}
              setModal={setModal}
              ref={sideRef}
              setModalData={setModalData}
            />
            <CarouselButton Name={"Right"} Slide={sideSlide} />
          </CarouselSlide>
        </div>
      )}
      <PlusButton onClick={randerImage}>
        {rander ? "끄기" : "모든 카테고리 보기"}
      </PlusButton>
    </AllBox>
  );
};

const AllBox = styled.div``;
const CarouselSlide = styled.div`
  margin-top: 77px;
  padding: 0 35px;
  display: flex;
  display: flex;
  justify-content: center;
  align-items: center;
`;

const PlusButton = styled.button`
  margin-top: 120px;
  width: 1440px;
  height: 100px;
  background-color: #f5f5f7;

  font-style: normal;
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;
  &:active {
    transform: translateY(2px);
  }
`;

export default All;
