import React, { useRef } from 'react';
import styled from 'styled-components';

import CarouselItem from './CarouselItem.js';
import CarouselEventModal from './CarouselEventModal.js';
import * as CarouselNavigator from './CarouselNavigator';

import useCarousel from './hooks/useCarousel';

const CarouselContainer = ({navigator="default", unit=1, ...props}) => {

  const $CarouselAreaWrapper = useRef(null);
  const $CarouselArea = useRef(null);
  
  const { 
    useNavigator, useEventModal,
    calculatedMovableRange, itemWidth
  } = useCarousel({ $CarouselAreaWrapper, $CarouselArea, unit, itemLength: props.children.length })

  return (
    <CarouselLayout navigator={navigator}>
      <CarouselAreaWrapper className={"carousel-area-wrapper"} ref={$CarouselAreaWrapper}>
        <CarouselArea ref={$CarouselArea} calculatedMovableRange={calculatedMovableRange}>
          {[...props.children].map((child, i) => {
            return <CarouselItem key={`Carousel-Item-${i}`} width={itemWidth} children={child} />
          })}
        </CarouselArea>
      </CarouselAreaWrapper>
      {
        navigator === "default" 
        ? <CarouselNavigator.Default useNavigator={useNavigator} /> 
        : <CarouselNavigator.Upper useNavigator={useNavigator}/>
      }
      <CarouselEventModal useEventModal={useEventModal} />
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div`
  display: flex;
  justify-content: ${props => props.navigator === "default" ? "center" : "flex-end"};

  & > .carousel-area-wrapper {
    padding-top: 20px;
  }

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

export default CarouselContainer;