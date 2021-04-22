import React, { useState, useEffect } from "react";
import styled from "styled-components";
import url from "../../../util/url";
import loadData from "../../../util/loadData";
import Tab from "../../molecules/Tab";
import LargeCard from "../../molecules/LargeCard";
// import Span from "../../atoms/span";
const BestDish = ({ children, ...props }) => {
  const WrapDiv = styled.div`
    display: flex;
    justify-content: space-between;
    /* margin: 32px 0 80px 80px; */
  `;

  const [bestDish, setBestDish] = useState([]);

  useEffect(() => {
    loadData(setBestDish, url.bestDish);
  }, []);
  return (
    <WrapDiv>
      {bestDish.map(({ category_id, name, items }) => {
        return (
          <Tab key={category_id} name={props.name}></Tab>

          //   <div key={category_id}>
          //     {name}
          //     {items.map(({ detail_hash, image, alt, title }) => {
          //       return (
          //         <div key={detail_hash}>
          //           <Image src={image}></Image>
          //           <div>{title}</div>
          //         </div>
          //       );
          //     })}
          //   </div>
        );
      })}
      <LargeCard></LargeCard>
    </WrapDiv>
  );
};

export default BestDish;
