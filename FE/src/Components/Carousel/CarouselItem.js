import styled from 'styled-components';

const CarouselItem = ({children, width, ...props}) => {
  return (
    <CarouselItemBox width={width}>
      {children}
    </CarouselItemBox>
  )
}
const CarouselItemBox = styled.div`
  min-width: ${props => `${props.width}px`};
  padding: 10px;
  box-sizing: border-box;
`;
export default CarouselItem
