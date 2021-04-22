import Info from 'components/card/Info';
import Price from 'components/card/Price';
import Tag from 'components/card/Tag';
import { EVENT, LAUNCHING } from 'const';
import styled from 'styled-components';
import Img from './Img';

const Card = ({ cardSize, data }) => {
  const {
    title,
    n_price,
    s_price,
    image,
    detail_hash,
    description,
    delivery_type,
    badge,
    alt,
  } = data;

  return (
    <CardBoxDiv>
      <Img cardSize={cardSize} image={image} alt={alt} />
      <Info name={title} body={description} />
      <Price normal={n_price} discount={s_price} />
      <TagBoxDiv>
        <Tag type={EVENT} />
        <Tag type={LAUNCHING} />
      </TagBoxDiv>
    </CardBoxDiv>
  );
};

export default Card;

const CardBoxDiv = styled.div`
  padding-right: 3rem;
  width: fit-content;
`;

const TagBoxDiv = styled.div`
  display: flex;
`;
