import React, { useState } from "react";
import styled from "styled-components";
import MainDish from "../MainDish";

const Button = styled.button`
  width: 100%;
  height: 100px;
  background: #f5f5f7;
  box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.05);
  cursor: pointer;
`;

const Span = styled.span`
  height: 26px;
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;
`;

const ViewMore = (props) => {
  const [view, setView] = useState(false);

  const showOthers = () => {
    setView(true);
  };

  const NewMenu = () => {
    return (
      <>
        <MainDish _innerText={props._innerText.soupDish} _dishType="soupDish" />
        <MainDish _innerText={props._innerText.sideDish} _dishType="sideDish" />
      </>
    );
  };

  return !view ? (
    <Button onClick={showOthers}>
      <Span>모든 카테고리 보기</Span>
    </Button>
  ) : (
    <NewMenu />
  );
};

export default ViewMore;
