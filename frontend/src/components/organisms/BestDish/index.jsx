import React, { useState, useEffect } from "react";
import useTabs from "../../../util/useTaps";
import styled from "styled-components";
import Tab from "../../molecules/Tab";
import LargeCard from "../../molecules/LargeCard";
import useFetch from "../../../util/useFetch";
const BestDish = ({ children, ...props }) => {
  const [bestDish, setBestDish] = useState([]);
  const tempImgUrl =
    "http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg";

  const WrapDiv = styled.div`
    display: flex;
    flex-direction: column;
  `;
  const WrapTab = styled.div`
    display: flex;
    min-width: 986px;
  `;
  const WrapCard = styled.div`
    display: flex;
    padding: 40px;
    width: 1280px;
    height: 620px;

    /* White Blue */

    background: #eef4fa;
    border-radius: 0px 5px 5px 5px;
  `;

  const { currentItem, changeItem } = useTabs(0, bestDish);

  useFetch(setBestDish, "bestDish");

  if (!currentItem) return null;
  console.log(currentItem.items);
  return (
    <WrapDiv>
      <WrapTab>
        {bestDish.map((tabMenu, i) => (
          <Tab onClick={() => changeItem(i)} key={i} name={tabMenu.name}></Tab>
        ))}
      </WrapTab>
      <WrapCard>
        {currentItem.items.map((card, i) => (
          <LargeCard
            key={card.detail_hash}
            _image={tempImgUrl}
            _title={card.title}
            _description={card.description}
            _nPrice={card.n_price}
            _sPrice={card.s_price}
            _badge={card.badge}
          ></LargeCard>
        ))}
      </WrapCard>
    </WrapDiv>
  );
};

export default BestDish;
