import Card from 'components/card/Card';
import Carousel from 'components/carousel/Carousel';
import { CAROUSEL, SIZE_SMALL } from 'const';
import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';
import DetailCarouselTitle from './DetailCarouselTitle';

const DetailCarousel = ({
  modalData,
  modalState,
  setModalState,
  setModalData,
  detailData,
}) => {
  const detailCarouselList =
    detailData &&
    detailData.map((item) => (
      <Card
        key={uuidv4()}
        item={item.data}
        detail_hash={item.hash}
        cardSize={SIZE_SMALL}
        cardType={CAROUSEL}
        {...{ modalData, modalState, setModalState, setModalData }}
      />
    ));

  return (
    <DetailCarouselDiv>
      <DetailCarouselTitle />
      {detailCarouselList && (
        <Carousel
          options={{
            panelCount: 5,
            animation: {
              target: 'transform',
              time: 0.5,
              effect: 'ease-in-out',
            },
          }}
        >
          {detailCarouselList}
        </Carousel>
      )}
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
