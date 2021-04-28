import styled from 'styled-components';
import CarouselButton from 'Components/Carousel/CarouselNavigator/CarouselButton.js';

const DefaultNavigator = ({ useNavigator }) => {
  const { slideLeft, slideRight, carouselNavigatorAreaSize } = useNavigator();

  return (
    <CarouselNavigatorArea size={carouselNavigatorAreaSize}>
      <CarouselButtonRelativeArea>
        <CarouselButton type={"left"} onClick={slideLeft} />
        <CarouselButton type={"right"} onClick={slideRight} />
      </CarouselButtonRelativeArea>
    </CarouselNavigatorArea>
  )
}
const CarouselNavigatorArea = styled.div`
  width: ${(props) => `${props.size.width + 40}px`};
  height: ${(props) => `${props.size.height}px`};
  position: absolute;

  display: flex;
  align-items: center;
`;

const CarouselButtonRelativeArea = styled.div`
  width: 100%;
  
  display: flex;
  justify-content: space-between;
`

export default DefaultNavigator;