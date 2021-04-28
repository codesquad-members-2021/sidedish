import { useState } from 'react';
import styled from 'styled-components';
import CarouselButton from 'Components/Carousel/CarouselNavigator/CarouselButton.js';
import CarouselIndex from 'Components/Carousel/CarouselNavigator/CarouselIndex.js';

const UpperNavigatior = ({ useNavigator }) => {
  const { slideLeft, slideRight, totalIndex } = useNavigator();
  const [currentIndex, setCurrentIndex] = useState(1);

  const handleOnClick = (type) => {
    if (type === "left" && slideLeft()) {
      setCurrentIndex(currentIndex - 1);
    }
    else if (type === "right" && slideRight()) {
      setCurrentIndex(currentIndex + 1);
    }
  }
  return (
    <CarouselNavigatorArea>
      <CarouselButton type={"left"} onClick={() => { handleOnClick("left") }} />
      <CarouselIndex totalIndex={totalIndex} currentIndex={currentIndex} />
      <CarouselButton type={"right"} onClick={() => { handleOnClick("right") }} />
    </CarouselNavigatorArea>
  )
}

const CarouselNavigatorArea = styled.div`
  position: absolute;
  z-index: 1;
  
  display: flex;
  justify-content: space-between;
  
  div {
    margin-left: 10px;
  }
`

export default UpperNavigatior
