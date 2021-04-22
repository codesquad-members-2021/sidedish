import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import axios from "axios";
import Carousel from "../Main/Carousel";

const All = ({ URL }) => {
  const [soup, setSoup] = useState([]);
  const [side, setSide] = useState([]);
  const [rander, setRander] = useState(false);
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

  return (
    <div>
      {rander && (
        <div>
          <Carousel
            MainTitle={"정성이 담긴 뜨끈한 국물요리"}
            Food={soup}
            setFood={setSoup}
            Ref={soupRef}
          />
          <Carousel
            MainTitle={"식탁을 풍성하게 하는 정갈한 밑반찬"}
            Food={side}
            setFood={setSide}
            Ref={sideRef}
          />
        </div>
      )}
      <PlusButton onClick={randerImage}>
        {rander ? "끄기" : "모든 카테고리 보기"}
      </PlusButton>
    </div>
  );
};

const PlusButton = styled.button`
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
