import { useRef, useState, useEffect } from 'react';
import styled from 'styled-components';

import CarouselButton from './CarouselButton.js';

const CarouselContainer = ({type = "default", items, children}) => {
  const [WH, setWH] = useState({width: 0, height: 0});
  const $CarouselAreaWrapper = useRef(null);
  const $CarouselArea = useRef(null);
  
  useEffect(()=> {
    const $CarouselAreaDOMRect = $CarouselAreaWrapper.current.getBoundingClientRect();
    setWH({ width: $CarouselAreaDOMRect.width, height: $CarouselAreaDOMRect.height });
  }, [])
  
  const handleDispatch = ({action}) => {
    
    let beforeTransition = $CarouselArea.current.style.transform.match(/(-?[0-9\.]+)/g);
    if (!beforeTransition) 
      beforeTransition = [0,0];
    else 
      beforeTransition = beforeTransition.map(each => Number(each));
    
    console.log("beforeTransition", beforeTransition)
    switch(action) {
      case "left":
        $CarouselArea.current.style.transform = `translate(${beforeTransition[0]-50}px, ${beforeTransition[1]+0}px)`;
        break;
      case "right":
        $CarouselArea.current.style.transform = `translate(${beforeTransition[0]+50}px, ${beforeTransition[1]+0}px)`;
        break;
      default:
        break;
    }
  }

  return (
    <CarouselLayout>
      <CarouselAreaWrapper ref={$CarouselAreaWrapper}>
        <CarouselArea ref={$CarouselArea}>
          {children}
        </CarouselArea>
      </CarouselAreaWrapper>
      <CarouselButtonArea WH={WH}>
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

const CarouselArea = styled.div`
  width: 100%;
  display: flex;
  
  div + div {
    margin-left: 10px;
  }
`
const CarouselButtonRelativeArea = styled.div`
  width: 100%;
  left: -20px;
  position: absolute;
  
  display: flex;
  justify-content: space-between;
`
const CarouselButtonArea = styled.div`
  width: ${(props) => {return `${props.WH.width+40}px`}};
  height: ${(props) => {return `${props.WH.height}px`}};
  position: absolute;

  display: flex;
  align-items: center;
`;





export default CarouselContainer;
