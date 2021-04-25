import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import axios from "axios";
import Carousel from "../Main/Carousel";
import PopUpModal from "../PopUpModal/PopUpModal";
import CarouselButton from "../Main/CarouselButton";

const All = ({ URL, modal, setModal, ModalData, setModalData }) => {
  const [soup, setSoup] = useState([]);
  const [side, setSide] = useState([]);
  const [rander, setRander] = useState(false);
  const soupImageRef = useRef();
  const sideImageRef = useRef();
  const soupRef = useRef();
  const sideRef = useRef();

  useEffect(() => {
    const fetchData = async () => {
      const soupData = await axios(URL + "soup").then((res) => res.data.body);
      const sideData = await axios(URL + "side").then((res) => res.data.body);
      setSoup(soupData.concat(soupData));
      setSide(sideData.concat(sideData));
    };
    fetchData();
  }, []); // eslint-disable-line

  const randerImage = () => {
    rander ? setRander(false) : setRander(true);
  };

  const soupSlide = (e) => {
    soupRef.current.Slider(e);
  };

  const sideSlide = (e) => {
    sideRef.current.Slider(e);
  };

  return (
    <div>
      {rander && (
        <div>
          {modal && (
            <PopUpModal setModal={setModal} ModalData={ModalData} URL={URL} />
          )}
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
    </div>
  );
};
const CarouselSlide = styled.div`
  /* padding: 0 20px */
  display: flex;
`;

const PlusButton = styled.button`
  margin-top: 120px;
  width: 1440px;
  height: 100px;
  background-color: #f5f5f7;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;
  &:active {
    transform: translateY(2px);
  }
`;

export default All;
