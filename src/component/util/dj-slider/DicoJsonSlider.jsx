import { useState, useEffect, createContext, useContext } from "react";
import styled from "styled-components";
import SlideList from "./SlideList";
import SlideArrows from "./SlideArrows";
import SlideDots from "./SlideDot";
import API from "../../../common/api.js";
import ItemCard from "../ItemCard";

const DicoJsonSliderContainer = styled.div`
  position: relative;
  width: 100%;
  min-height: 5vh;
`;

const SlideTrack = styled.div`
  overflow: hidden;
  position: relative;
`;

const SlideListStyle = styled.div`
  display: grid;
  width: 300%;
  grid-template-columns: repeat(${(props) => props.perPanel * 3}, 1fr);
  & > * {
    margin-right: 0.5rem;
    &:nth-child(${(props) => props.perPanel}n + 1) {
      margin-right: 1rem;
    }
    &:not(:nth-child(${(props) => props.perPanel}n + 1)) {
      margin-left: 0.5rem;
    }
    &:nth-child(${(props) => props.perPanel}n) {
      margin-right: 0rem;
      margin-left: 1rem;
    }
  }
`;

const PageContext = createContext();
const ItemContext = createContext();

export function DicoJsonSlider(props = {}) {
  const {
    // 필수
    // list = [],
    perPanel = 4,
    speed = 500,
    // 선택
    autoplay = false, // interval과 세트
    interval = 1000,
    dots = false,
    count = false,

    arrows = true,
    loop = false,
  } = props;
  const [items, setItems] = useState(null);
  const [page, setPage] = useState(1);
  const transitionDefault = `transform ${speed}ms`;
  const [x, setX] = useState(-100 / 3);
  const [moving, setMoving] = useState(false);
  const [trasitionValue, setTransitionValue] = useState(transitionDefault);

  const onTransitionEnd = () => {
    setMoving(false);
    setTransitionValue("none");
    setPage(x > -1 ? page - 1 : page + 1);
    setX(-100 / 3);
  };

  const onMovePage = (count) => {
    if (moving) return;
    setX(count > 0 ? -100 / 3 * 2 : 0);
    setMoving(true);
  };

  useEffect(() => {
     if (!items) {
      (async () => {
        const data = await API("/main");
        setItems(data[0].childs); // 8, 5, 4
      })();
    }
    return;
  }, [items]);

  useEffect(() => {
    if (trasitionValue === "none") setTransitionValue(transitionDefault);
  }, [x]);

  if (!items) return null;

  const slideStyles = {
    transform: `translate3d(${x}%, 0, 0)`,
    transition: trasitionValue,
  };

  const components = [];
  const getSalePrice = (price, discountRate) => {
    return price - price * (discountRate / 100);
  };
  if (page === 1) {
    components.push(...items.slice((page - 2) * perPanel));
  } else {
    components.push(
      ...items.slice((page - 2) * perPanel, (page - 1) * perPanel)
    );
  }
  for (let i = perPanel * (page - 1); i < perPanel * (page + 1); i++) {
    components.push(items[i % items.length]);
  }

  return (
    <DicoJsonSliderContainer>
      <PageContext.Provider value={page}>
        <ItemContext.Provider value={items}>
          <SlideTrack>
            <SlideListStyle
              style={slideStyles}
              perPanel={perPanel}
              onTransitionEnd={onTransitionEnd}
            >
              {components.map((item, idx) => (
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
            </SlideListStyle>
          </SlideTrack>
        </ItemContext.Provider>
        <SlideArrows
          onMovePage={onMovePage}
          loop={loop}
          maxPage={Math.ceil(items.length / perPanel)}
        />
        {/* <SlideDots setPage={setPage} /> */}
      </PageContext.Provider>
    </DicoJsonSliderContainer>
  );
}

export function usePageContext() {
  return useContext(PageContext);
}

export function useItemContext() {
  return useContext(ItemContext);
}
