import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import axios from "axios";
import Carousel from "./Carousel";
import PopUpModal from "../PopUpModal/PopUpModal";

const Main = ({ URL }) => {
  const [Food, setFood] = useState([]);
  const [modal, setModal] = useState(false);
  const mainRef = useRef(null);

  // 꼭 fetchData를 useEffect 안에 넣어놔야 하는가?
  useEffect(() => {
    const fetchData = async () => {
      const data = await axios(URL + "main").then((res) => res.data.body);
      setFood(data.concat(data));
    };
    fetchData();
  }, []); // eslint-disable-line

  return (
    <div>
      {modal && <PopUpModal setModal={setModal} />}
      <Carousel
        MainTitle={"모두가 좋아하는 든든한 메인요리"}
        Food={Food}
        setFood={setFood}
        Ref={mainRef}
        setModal={setModal}
      />
    </div>
  );
};

export default Main;
