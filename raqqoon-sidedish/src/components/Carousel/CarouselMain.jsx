import { v4 as uuidv4 } from 'uuid';
import { DEFAULT, SIZE_MEDIUM } from 'const';
import useFetch from 'customHooks/useFetch';
import Card from 'components/card/Card';
import Carousel from 'components/carousel/Carousel';

const CarouselMain = ({
  path,
  modalData,
  modalState,
  setModalState,
  setModalData,
}) => {
  const dishData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/${path}`
  );

  const dishList =
    dishData &&
    dishData.map((item) => (
      <Card
        key={uuidv4()}
        item={item}
        detail_hash={item.detail_hash}
        cardSize={SIZE_MEDIUM}
        cardType={DEFAULT}
        {...{ modalData, modalState, setModalState, setModalData }}
      />
    ));

  return dishList ? (
    <Carousel
      options={{
        panelCount: 4,
        animation: { target: 'transform', time: 0.5, effect: 'ease-in-out' },
      }}
    >
      {dishList}
    </Carousel>
  ) : (
    <div>로딩중입니다!!!!!!!</div>
  );
};

export default CarouselMain;
