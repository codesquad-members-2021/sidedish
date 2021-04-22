import React, { useState, useEffect } from "react";
import useTabs from "../../../util/useTaps";
import styled from "styled-components";
import Tab from "../../molecules/Tab";
import LargeCard from "../../molecules/LargeCard";
import useFetch from "../../../util/useFetch";

const BestDish = ({ children, ...props }) => {
  const [bestDish, setBestDish] = useState([]);

  console.log("🔥besedish🔥🔥🔥🔥🔥🔥🔥🔥", bestDish);
  console.log("🔥besedish🔥🔥🔥🔥🔥🔥🔥🔥", typeof bestDish);

  const WrapDiv = styled.div`
    display: flex;
    /* flex-direction: row; */
  `;

  const { currentItem, changeItem } = useTabs(0, bestDish);

  useFetch(setBestDish, "bestDish");

  if (!currentItem) return null;
  console.log(currentItem.items);
  return (
    <WrapDiv>
      {bestDish.map((tabMenu, i) => (
        <button onClick={() => currentItem}>
          <Tab key={i} name={tabMenu.name}></Tab>
        </button>
      ))}
      {currentItem.items.map((card, i) => (
        <LargeCard
          key={card.detail_hash}
          _image={card.image}
          _title={card.title}
          _description={card.description}
          _nPrice={card.n_price}
          _sPrice={card.s_price}
          _badge={card.badge}
        ></LargeCard>
      ))}
    </WrapDiv>
  );
};

export default BestDish;
