import styled from 'styled-components';
import Carousel from './Carousel';

const CarouselSection = () => {
  return (
    <CarouselWrapper>
      <h2>모두가 좋아하는 든든한 메인요리</h2>
      <Carousel />
    </CarouselWrapper>
  );
};

export default CarouselSection;

const CarouselWrapper = styled.section`
  margin: 2rem 5rem;
  position: relative;
  h2 {
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 24px;
  }
`;
