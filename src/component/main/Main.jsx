import { useEffect, useState } from "react";
import BestTab from "./bestTab/BestTab.jsx";
import PopUpContainer from "./popUp/PopUpContainer.jsx";
import ShowMoreBtn from "./ShowMoreBtn.jsx";
import API from "../../common/api.js";
import { DicoJsonCarousel } from "../util/dj-slider/DicoJsonCarousel.jsx";
import ItemCard from "../util/ItemCard";
import styled from "styled-components";

import {
  useMainItemsContext,
  useMainItemsActiveContext,
  useSetMainItemsActiveContext,
} from "../Context";

const CarouselContainer = styled.div`
  margin-bottom: 5rem;
`;

export default function Main() {
  const mainItems = useMainItemsContext();
  const active = useMainItemsActiveContext();
  const setActive = useSetMainItemsActiveContext();

  const onShowMoreItems = () => {
    setActive(true);
  };
  const getSalePrice = (price, discountRate) => {
    return price - price * (discountRate / 100);
  };
  if (!mainItems) return null;
  return (
    <>
      <BestTab />
      {active ? (
        mainItems.map((mainItem, id) => (
          <CarouselContainer key={id}>
            <h2>{mainItem.title}</h2>
            <DicoJsonCarousel>
              {mainItem.childs.map((item, idx) => (
                <ItemCard
                  src={item.main_image}
                  title={item.title}
                  description={item.description}
                  salePrice={getSalePrice(item.price, item.discount)}
                  normalPrice={item.price}
                  labels={item.label}
                  key={idx}
                  id={item._id}
                />
              ))}
            </DicoJsonCarousel>
          </CarouselContainer>
        ))
      ) : (
        <CarouselContainer>
          <h2>{mainItems[0].title}</h2>
          <DicoJsonCarousel options={{ loop: true }}>
            {mainItems[0].childs.map((item, idx) => (
              <ItemCard
                src={item.main_image}
                title={item.title}
                description={item.description}
                salePrice={getSalePrice(item.price, item.discount)}
                normalPrice={item.price}
                labels={item.label}
                key={idx}
                id={item._id}
              />
            ))}
          </DicoJsonCarousel>
        </CarouselContainer>
      )}
      <ShowMoreBtn active={active} onShowMoreItems={onShowMoreItems} />
      <PopUpContainer />
    </>
  );
}
