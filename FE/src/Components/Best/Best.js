import React,{useState} from "react";
import styled from 'styled-components';
import TabContent from "./TabContent";
import TabButton from "./TabButton";
// import axios from "axios";

const BestTitle = styled.h2`
  margin-top: 30px;
`
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

const Best = () => {
  const [toggleState, setToggleState] = useState(1);

  const toggleTab = (index) => {
    setToggleState(index);
  };

  return (
    <>
    <BestTitle>후기가 증명한 베스트 반찬</BestTitle>
    <TabCotainer>
      <TabButton toggleTab={toggleTab} toggleState = {toggleState}/>
      <TabContent toggleTab={toggleTab} toggleState = {toggleState}/>
    </TabCotainer>
    </>
  );
  
};

export default Best;