import styled from 'styled-components';
import Img from 'components/card/Img';
import Info from 'components/card/Info';
import Price from 'components/card/Price';
import Tag from 'components/card/Tag';
import {
  BEST,
  EVENT,
  LAUNCHING,
  TAG_BEST,
  TAG_EVENT,
  TAG_LAUNCHING,
} from 'const';
import { v4 as uuidv4 } from 'uuid';

const Card = ({
  cardSize,
  item,
  setModalState,
  modalData,
  setModalData,
  detail_hash,
}) => {
  const { title, description, n_price, s_price, badge, image } = item;

  if (item.data) {
    const { detail_section, prices, product_description } = item.data;

    return (
      <CardBoxDiv>
        <Img
          cardSize={cardSize}
          image={detail_section[0]}
          setModalState={setModalState}
          modalData={modalData}
          setModalData={setModalData}
          detail_hash={detail_hash}
          title={title}
        />
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
  }

  return (
    <CardBoxDiv>
      <Img
        {...{
          cardSize,
          image,
          setModalData,
          setModalState,
          modalData,
          detail_hash,
          title,
          badge,
        }}
      />
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
