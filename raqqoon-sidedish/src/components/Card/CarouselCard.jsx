import styled from 'styled-components';
import Img from 'components/card/Img';
import Info from 'components/card/Info';
import Price from 'components/card/Price';

const CarouselCard = ({
  cardSize,
  item,
  setModalState,
  modalData,
  setModalData,
  detail_hash,
}) => {
  const { top_image, prices, product_description } = item;

  return (
    <CardBoxDiv>
      <Img
        {...{
          cardSize,
          setModalData,
          setModalState,
          modalData,
          detail_hash,
        }}
        image={top_image}
      />
      <Info name={null} body={product_description} {...{ cardSize }} />
      <Price normal={prices[1]} discount={prices[0]} {...{ cardSize }} />
    </CardBoxDiv>
  );
};

export default CarouselCard;

const CardBoxDiv = styled.div`
  width: fit-content;
  margin: 10px 5px;
`;
