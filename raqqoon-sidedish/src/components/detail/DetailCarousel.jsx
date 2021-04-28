import Card from 'components/card/Card';
import Carousel from 'components/carousel/Carousel';
import { CAROUSEL, SIZE_MEDIUM } from 'const';
import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';

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
        item={item.data.top_image}
        detail_hash={item.hash}
        cardSize={SIZE_MEDIUM}
        cardType={CAROUSEL}
        {...{ modalData, modalState, setModalState, setModalData }}
      />
    ));

  return (
    <DetailCarouselDiv>
      {detailCarouselList && (
        <Carousel
          options={{
            panelCount: 3,
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
