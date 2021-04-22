import styled from 'styled-components';
import Img from './Img';
import Info from '../card/Info';
import Price from '../card/Price';
import Tag from '../card/Tag';
import {
  BEST,
  EVENT,
  LAUNCHING,
  TAG_BEST,
  TAG_EVENT,
  TAG_LAUNCHING,
} from '../../const';
import { v4 as uuidv4 } from 'uuid';

const Card = ({ cardSize, item, imgUrl }) => {
  const { title, description, n_price, s_price, badge } = item;

  return (
    <CardBoxDiv>
      <Img cardSize={cardSize} imgUrl={imgUrl} />
      <Info name={title} body={description} />
      <Price normal={s_price} discount={n_price} />
      {badge && (
        <TagBoxDiv>
          {badge.map((badge) => {
            switch (badge) {
              case TAG_EVENT:
                return <Tag type={EVENT} key={uuidv4()} />;
              case TAG_LAUNCHING:
                return <Tag type={LAUNCHING} key={uuidv4()} />;
              case TAG_BEST:
                return <Tag type={BEST} key={uuidv4()} />;
              default:
                break;
            }
            return badge;
          })}
        </TagBoxDiv>
      )}
    </CardBoxDiv>
  );
};

export default Card;

const CardBoxDiv = styled.div`
  padding-right: 3rem;
  width: fit-content;
  margin: 10px 5px;

  &:first-child {
    margin-left: 10px;
  }

  &:last-child {
    margin-right: 10px;
  }
`;

const TagBoxDiv = styled.div`
  display: flex;
`;
