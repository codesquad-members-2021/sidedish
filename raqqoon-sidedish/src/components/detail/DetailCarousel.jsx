import Card from 'components/card/Card';
import Carousel from 'components/carousel/Carousel';
import { CAROUSEL, SIZE_MEDIUM } from 'const';
import useFetch from 'customHooks/useFetch';
import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';

const DetailCarousel = ({
  modalData,
  modalState,
  setModalState,
  setModalData,
}) => {
  const detailSection = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail`
  );

  const detailCarouselList =
    detailSection &&
    detailSection.map((item) => (
      <Card
        key={uuidv4()}
        item={item.data.top_image}
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
