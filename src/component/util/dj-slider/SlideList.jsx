import styled from "styled-components";
import Slide from "./Slide";
import { usePageContext, useItemContext } from "./DicoJsonSlider";
import ItemCard from "../ItemCard";

const SlideTrack = styled.div`
  overflow: hidden;
  position: relative;
`;

const SlideListStyle = styled.div`
  display: grid;
  width: 300%;
  transform: translateX(-33.3333333%);
  grid-gap: 1.5rem;
  grid-template-columns: repeat(${(props) => props.perPanel * 3}, 1fr);
`;

export default function SlideList({
  style,
  perPanel,
  onTransitionEnd,
  speed,
  maxPage,
  loop,
}) {
  const components = [];
  const page = usePageContext();
  const items = useItemContext();
  const getSalePrice = (price, discountRate) => {
    return price - price * (discountRate / 100);
  };
  // 1 -4부터 끝까지
  // 2 0부터 끝까지
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
    <SlideTrack>
      <SlideListStyle
        style={style}
        onTransitionEnd={onTransitionEnd}
        perPanel={perPanel}
        width={maxPage}
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
  );
}

// 12345
// const components = [];

// page = 2, 4,5,6,7
// items = [1, 2, 3, 4, 0, 1, 2, 3, 4], 길이 5
// components = [4, 0, 1, 2]
// 1 - 2 < 0
// 1 ~ 4
// 1 - 1 0 - 1

// const a = [0,1,2,3,4];
// a.slice(-1) // 4
// a.slice(-4) // 1,2,3,4
// 2
// components.push([...items.slice((pages - 2) * perPanel)]);
// for(let i = perPanel * (page - 1); i < perPanel * (page + 1); i++) {
//     // 8
//     items[-4]
//     // 1 2 3 4 | 0 1 2 3 | 4 0 1 2
//     components.push(items[i % items.length]);
// }

// 2345 <- /1234/ -> 5123

// 맞아!
/*
        items [0, 1, 2, 3, 4, 5, 6, 7, 8]
        perPanel 4 4
        이거를 무슨 수로 보여주지? 그러게..........
        page 1
        items.map(v => <ItemCard/>);
            <div index=1/>
            <div index=2/>
            <div index=3/>
            <div index=4/>

        page 1
            <div index=4/>
            <div index=1/>
            <div index=2/>

        page 2
            <div index=1/>
            <div index=2/>
            <div index=3/>

        page 3
            <div index=2/>
            <div index=3/>
            <div index=4/>

        page 4
            <div index=3/>
            <div index=4/>
            <div index=1/>

        page 1
            <div index=2/>
            <div index=1/>
            <div index=2/>
        
        page 2
            <div index=1/>
            <div index=2/>
            <div index=1/>

    */
