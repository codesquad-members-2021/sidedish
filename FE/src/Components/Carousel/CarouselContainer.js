import { useRef, useState, useEffect, useLayoutEffect } from 'react';
import styled from 'styled-components';

import CarouselItem from './CarouselItem.js';
import CarouselButton from './CarouselButton.js';
import CarouselEventModal from './CarouselEventModal.js';

const CarouselContainer = ({type = "default", items, unit=1, ...props}) => {
  const [carouselButtonAreaSize, setCarouselButtonAreaSize] = useState({width: 0, height: 0});
  const [itemWidth, setItemWidth] = useState(0);
  const [calculatedMovableRange, setCalculatedMovableRange] = useState({from: 0, to: 0});
  const [slideCount, setSlideCount] = useState(unit);
  const [eventMessage, setEventMessage] = useState({isActive:false, msg:""});
  
  const $CarouselAreaWrapper = useRef(null);
  const $CarouselArea = useRef(null);
  
  const handleResize = () => {
    setCarouselButtonAreaSize({ 
      width: $CarouselAreaWrapper.current.clientWidth, 
      height: $CarouselAreaWrapper.current.clientHeight 
    });
    setItemWidth($CarouselAreaWrapper.current.clientWidth / unit);
  }

  useEffect(() => {
    $CarouselArea.current.classList.add("carousel-start")
    return () => { $CarouselArea.current.classList.remove("carousel-start"); }
  }, [slideCount]);

  useLayoutEffect(()=> {
    handleResize();
    // 향후 쓰로틀로 변경
    window.addEventListener("resize", handleResize);
    
    // cleanup
    return () => window.removeEventListener("resize", handleResize);
  }, [window.innerWidth])
  
  const handleTransitionEnd = () => {
    console.log("handleTransitionEnd", calculatedMovableRange);
  }

  const isNotAbleToSlide = () => {
    if (eventMessage.isActive) return true;
    
    if (slideCount === unit) {
      setEventMessage({ isActive: true, msg: "처음입니다" });
      return true;
    } else if (slideCount === props.children.length) {
      setEventMessage({ isActive: true, msg: "마지막입니다" });
      return true;
    }

    return false;
  }
  
  const slideLeft = () => {
    if (isNotAbleToSlide()) return;
    
    let calculatedXValue = calculatedMovableRange.to;
    // let ItemWidth = $CarouselArea.current.offsetWidth/unit;
    if (slideCount - unit < unit) {
      let remainItemsCount = slideCount%unit;
      calculatedXValue += itemWidth*remainItemsCount;
      setSlideCount(unit);
    } else {
      calculatedXValue += $CarouselArea.current.offsetWidth;
      setSlideCount(slideCount - unit);
    }
    setCalculatedMovableRange({from: calculatedMovableRange.to, to: Number(calculatedXValue.toFixed(3))});
  }

  const slideRight = () => {
    if (isNotAbleToSlide()) return;

    let calculatedXValue = calculatedMovableRange.to;
    if (slideCount + unit > props.children.length) {
      let remainItemsCount = props.children.length - slideCount;
      calculatedXValue -= itemWidth*remainItemsCount;
      setSlideCount(props.children.length);
    } else {
      calculatedXValue -= $CarouselArea.current.offsetWidth;
      setSlideCount(slideCount + unit);
      
    }
    setCalculatedMovableRange({from: calculatedMovableRange.to, to: Number(calculatedXValue.toFixed(3))});
  }
  
  const renderEventModal = () => {
    return <CarouselEventModal carouselEvent={eventMessage} setEventMessage={setEventMessage}/>;
  }

  return (
    <CarouselLayout>
      <CarouselAreaWrapper ref={$CarouselAreaWrapper}>
        <CarouselArea ref={$CarouselArea} calculatedMovableRange={calculatedMovableRange} onTransitionEnd={handleTransitionEnd}>
          {[...props.children].map((child, i) => {
            return <CarouselItem key={`Carousel-Item-${i}`} width={itemWidth} children={child} />
          })}
        </CarouselArea>
      </CarouselAreaWrapper>
      <CarouselButtonArea size={carouselButtonAreaSize}>
        <CarouselButtonRelativeArea>
          <CarouselButton type={"left"} onClick={slideLeft} />
          <CarouselButton type={"right"} onClick={slideRight} />
        </CarouselButtonRelativeArea>
      </CarouselButtonArea>
      <CarouselEventModalArea>
        {renderEventModal()}
      </CarouselEventModalArea>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div`
  display: flex;
`;

const CarouselAreaWrapper = styled.div`
  width: 100%;
  overflow: hidden;
`;

const CarouselArea = styled.div`
  width: 100%;
  display: flex;
  position: relative;
  left: ${props => `${props.calculatedMovableRange.from}px`};
  
  &.carousel-start {
    transition: left 0.5s;
    left: ${props => `${props.calculatedMovableRange.to}px`};
  }
`;

const CarouselEventModalArea = styled.div`
  position: absolute;
  width: 100%;
  left: 0;
  
  display: flex;
  justify-content: center;
`;

const CarouselButtonRelativeArea = styled.div`
  width: 100%;
  left: -20px;
  position: absolute;
  
  display: flex;
  justify-content: space-between;
`
const CarouselButtonArea = styled.div`
  width: ${(props) => `${props.size.width+40}px`};
  height: ${(props) => `${props.size.height}px`};
  position: absolute;

  display: flex;
  align-items: center;
`;

export default CarouselContainer;