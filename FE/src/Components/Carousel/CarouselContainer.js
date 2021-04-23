import { useRef, useState, useEffect, useLayoutEffect } from 'react';
import styled, {keyframes} from 'styled-components';

import CarouselItem from './CarouselItem.js';
import CarouselButton from './CarouselButton.js';

const CarouselContainer = ({type = "default", items, unit=1, ...props}) => {
  const [carouselButtonAreaSize, setCarouselButtonAreaSize] = useState({width: 0, height: 0});
  const [itemWidth, setItemWidth] = useState(0);
  const [calculatedMovableRange, setCalculatedMovableRange] = useState({from: 0, to: 0});
  const slideCount = useRef(unit);
  
  const $CarouselAreaWrapper = useRef(null);
  const $CarouselArea = useRef(null);
  
  const handleResize = () => {
    setCarouselButtonAreaSize({ width: $CarouselAreaWrapper.current.clientWidth, height: $CarouselAreaWrapper.current.clientHeight });
    setItemWidth($CarouselAreaWrapper.current.clientWidth/unit);
  }

  useEffect(() => {
    $CarouselArea.current.classList.add("carousel-animate")
    console.log(calculatedMovableRange)

    return () => {
      $CarouselArea.current.classList.remove("carousel-animate")
    }
  });

  useLayoutEffect(()=> {
    handleResize();
    
    // 향후 쓰로틀로 변경
    window.addEventListener("resize", handleResize);
    
    // cleanup
    return () => window.removeEventListener("resize", handleResize);
  }, [window.innerWidth])
  
  const handleDispatch = ({action}) => {
    // let beforeTransition = $CarouselArea.current.style.transform.match(/(-?[0-9\.]+)/g);
    // beforeTransition = !beforeTransition ? [0,0] : beforeTransition.map(each => Number(each));
    
    let calculatedXValue;
    switch(action) {
      case "left":
        if (slideCount.current === unit) {
          console.log("처음입니다.");
          break;
        } else if (slideCount.current - unit < unit) {
          calculatedXValue = calculatedMovableRange.to + $CarouselArea.current.offsetWidth/unit*(slideCount.current%unit);
          slideCount.current = unit;
        } else {
          calculatedXValue = calculatedMovableRange.to + $CarouselArea.current.offsetWidth;
          slideCount.current -= unit;
        }
        setCalculatedMovableRange({from: calculatedMovableRange.to, to: Number(calculatedXValue.toFixed(3))});
        break;
      case "right":
        if (slideCount.current === props.children.length) {
          console.log("마지막입니다.");
          break;
        } else if (slideCount.current + unit > props.children.length) {
          calculatedXValue = calculatedMovableRange.to - $CarouselArea.current.offsetWidth/unit*(props.children.length-slideCount.current);
          slideCount.current = props.children.length;
        } else {
          calculatedXValue = calculatedMovableRange.to - $CarouselArea.current.offsetWidth;
          slideCount.current += unit;
        }
        setCalculatedMovableRange({from: calculatedMovableRange.to, to: Number(calculatedXValue.toFixed(3))});
        break;
      default:
        break;
    }
  }

  return (
    <CarouselLayout>
      <CarouselAreaWrapper ref={$CarouselAreaWrapper}>
        <CarouselArea ref={$CarouselArea} calculatedMovableRange={calculatedMovableRange}>
          {[...props.children].map((child, i) => {
            return <CarouselItem key={`Carousel-Item-${i}`} width={itemWidth} children={child} />
          })}
        </CarouselArea>
      </CarouselAreaWrapper>
      <CarouselButtonArea size={carouselButtonAreaSize}>
        <CarouselButtonRelativeArea>
          <CarouselButton type={"left"} onDispatch={handleDispatch} />
          <CarouselButton type={"right"} onDispatch={handleDispatch} />
        </CarouselButtonRelativeArea>
      </CarouselButtonArea>
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

// const carouselChange = (props) => keyframes`
//   0% {
//     transform: ${(props) => `translateX(${props.calculatedMovableRange.from}px)`};
//   }
//   100% {
//     transform: ${(props) => `translateX(${props.calculatedMovableRange.to}px)`};
//   }
// `

const CarouselArea = styled.div`
  width: 100%;
  display: flex;

  &.carousel-animate {
    animation-duration: 1s;
    animation-name: carousel-change;
    animation-fill-mode: forwards;
  }

  @keyframes carousel-change {
    0% {
      transform: ${(props) => `translateX(${props.calculatedMovableRange.from}px)`};
    }
    100% {
      transform: ${(props) => `translateX(${props.calculatedMovableRange.to}px)`};
    }
  }
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