// import Carousel from 'components/carousel/Carousel';
import TempCarousel from 'components/carousel/TempCarousel';
import styled from 'styled-components';

const DetailCarousel = ({ detailSection }) => {
  // console.log(detailSection);
  return (
    <DetailCarouselDiv>
      <TempCarousel detailSection={detailSection} ITEM_NUMBER={5} />
    </DetailCarouselDiv>
  );
};

export default DetailCarousel;

const DetailCarouselDiv = styled.div`
  width: 960px;
  height: 396px;

  background: #f5f5f7;
  border-radius: 0px 0px 5px 5px;
`;
