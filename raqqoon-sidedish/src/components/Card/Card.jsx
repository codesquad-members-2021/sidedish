import DefaultCard from './DefaultCard';
import CarouselCard from './CarouselCard';

const Card = ({
  cardSize,
  item,
  setModalState,
  modalData,
  setModalData,
  detail_hash,
  cardType,
}) => {
  return {
    default: (
      <DefaultCard
        {...{
          cardSize,
          item,
          setModalState,
          modalData,
          setModalData,
          detail_hash,
        }}
      />
    ),
    carousel: (
      <CarouselCard
        {...{
          cardSize,
          item,
          setModalState,
          modalData,
          setModalData,
          detail_hash,
        }}
      />
    ),
  }[cardType];
};

export default Card;
