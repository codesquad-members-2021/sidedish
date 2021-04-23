import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import TabContent from "./TabContent";
import TabButton from "./TabButton";
import CarouselCard from "../Main/CarouselCard";
import axios from "axios";

const BestTitle = styled.h2`
  margin-top: 30px;
`;
const TabCotainer = styled.div`
  display: flex;
  flex-direction: column;
  position: relative;
  width: 100%;
  height: 678px;
  background-color: transparent;
  margin: 30px auto 0;
  word-break: break-all;
  border-top: 0px;
`;

const TabBtn = styled.button`
  font-size: 18px;
  border: none;
`;

const Best = ({ URL }) => {
  const [toggleState, setToggleState] = useState(1);

  const toggleTab = (index) => {
    setToggleState(index);
  };

  //fetch
  const [Food, setFood] = useState([]);
  const mainRef = useRef(null);

  useEffect(() => {
    const fetchData = async () => {
      const data = await axios(URL + "best").then((res) => res.data.body);
      setFood(data);
      let a = data.map((v) => v.items);
    };
    fetchData();
  }, []);

  return (
    <>
      <BestTitle>후기가 증명한 베스트 반찬</BestTitle>
      <TabCotainer>
        <TabButton
          Food={Food}
          setFood={setFood}
          toggleTab={toggleTab}
          toggleState={toggleState}
        />
        <TabContent
          Food={Food}
          setFood={setFood}
          Ref={mainRef}
          toggleTab={toggleTab}
          toggleState={toggleState}
        />
      </TabCotainer>
    </>
  );
};

export default Best;
