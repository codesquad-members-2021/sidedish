import styled from 'styled-components';
import Carousel from 'components/carousel/Carousel';

const CarouselSection = () => {
  return (
    <CarouselWrapper>
      <h2>모두가 좋아하는 든든한 메인요리</h2>
      <Carousel />
      <button>
        <span>모든 카테고리 보기</span>
      </button>
    </CarouselWrapper>
  );
};

export default CarouselSection;

const CarouselWrapper = styled.section`
  margin: 5rem 0 2rem;
  width: 1280px;
  position: relative;
  h2 {
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: 700;
    font-size: 24px;
    line-height: 35px;
    color: #333333;
  }
`;
