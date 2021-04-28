import { useState, useEffect, createContext, useContext } from 'react';
import styled from "styled-components";
import SlideList from "./SlideList";
import SlideArrows from './SlideArrows';
import SlideDots from './SlideDot';
import API from '../../../common/api.js';

const DJSliderContainer = styled.div`
  position: relative;
  width: 100%;
  min-height: 5vh;
`;

const PageContext = createContext();
const ItemContext = createContext();

// 페이지의 변화에 따라 arrow 컨트롤, slideTrack의 slideList의 보여줄 영역 컨트롤, dots의 활성화 dot 컨트롤

export function DJSlider(props = {}) {
  const [ items, setItems ] = useState(null);
  const [ page, setPage ] = useState(1);

  const {
    // 필수
    // list = [],
    perPages = 4,
    speed = 500,
    
    // 선택
    autoplay = false, // interval과 세트
    interval = 1000,
    dots = false, 
    count = false, 

    arrows = true,
    loop = false, 
  } = props;
  useEffect(() => {
    if (!items) {
      (async () => {
        const data = await API("/main");
        setItems(data[0].childs); // 8, 5, 4
      })();
    }
    return;
  }, [items]);

  if(!items) return null;

  return (
    <DJSliderContainer>
      <PageContext.Provider value={page}>
        <ItemContext.Provider value={items}>
          <SlideList perPages={perPages} speed={speed} maxPage={Math.ceil(items.length / perPages)}/>
        </ItemContext.Provider>
        <SlideArrows setPage={setPage} loop={loop} maxPage={Math.ceil(items.length / perPages)}/>
        {/* <SlideDots setPage={setPage} /> */}
      </PageContext.Provider>
    </DJSliderContainer>
  );
}

export function usePageContext() {
  return useContext(PageContext);
}

export function useItemContext() {
  return useContext(ItemContext);
}



// export default function DJSlider(props) {
//   const {
//     list = [],
//     perPages = 1,
//     autoplay = false,
//     interval = 1000,
//     loop = false, 
//     dots = false, 
//     arrows = true,
//     count = false, 
//     speed = 500,
//   } = props;
//   return (
//     <DJSliderContainer>
//       <SlideTrack/>
//       <SlideArrows/>
//       <SlideDots/>
//     </DJSliderContainer>
//   );
// }
/*
  <DJSlider>
    <SlideTrack>
      <SlideList>
        <Slide>
          <ItemCard/>
          <ItemCard/>
          <ItemCard/>
        </Slide>
        <Slide>
          <ItemCard/>
          <ItemCard/>
          <ItemCard/>
        </Slide>
        <Slide>
          <ItemCard/>
          <ItemCard/>
          <ItemCard/>
        </Slide>
      </SlideList>
    </SlideTrack>
    <SlideArrows>
      <SlideLeftArrow />
      <SlideRightArrow />
    </SlideArrows>
    <SlideNavigation>
      <SlideDotted active=true/>
      <SlideDotted active=false/>
      <SlideDotted active=false/>
    </SlideNavigation>
  </DJSlider>
*/


// const DicoJsonSlider = (target, { props }) => {
//   // customArrow
//   const { perPages, autoplay, timeInterval, loop, useNavigation, useArrow, customArrow, useCount, animationSpeed } = props;
// }
const items = [
  "https://cdn.pixabay.com/photo/2016/08/10/10/28/vegetable-1582920__340.jpg",
  "https://cdn.pixabay.com/photo/2017/07/27/16/48/toppokki-2545943__340.jpg", 
  "https://cdn.pixabay.com/photo/2017/08/08/09/44/food-photography-2610865__340.jpg", 
  "https://cdn.pixabay.com/photo/2015/06/26/02/58/korean-food-822092__340.jpg",
  "https://cdn.pixabay.com/photo/2016/01/15/06/57/vegetarian-1141242__340.jpg",
  "https://cdn.pixabay.com/photo/2018/03/26/15/46/korean-food-3263032__340.jpg",
  "https://cdn.pixabay.com/photo/2019/03/26/01/14/tofu-4081697__340.jpg",
  "https://cdn.pixabay.com/photo/2015/03/27/15/36/bob-694825__340.jpg",
  "https://cdn.pixabay.com/photo/2018/03/07/10/09/food-3205654__340.jpg",
  "https://cdn.pixabay.com/photo/2016/05/09/02/25/food-1380277__340.jpg",
  "https://cdn.pixabay.com/photo/2018/12/10/00/27/tang-fish-cakes-3866060__340.jpg",
  "https://cdn.pixabay.com/photo/2015/09/10/17/07/gochujang-934742__340.jpg",
  "https://cdn.pixabay.com/photo/2017/08/14/15/52/bachelor-business-2640909__340.jpg",
  "https://cdn.pixabay.com/photo/2015/04/06/16/33/bibim-guksu-709616__340.jpg",
  "https://cdn.pixabay.com/photo/2015/11/20/08/17/meat-1052571__340.jpg"
];
/*
  <Items>
    <Item/>
    <Item/>
    <Item/>
    <Item/>
    <Item/>
  </Items>
*/
