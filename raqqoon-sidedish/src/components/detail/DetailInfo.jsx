import styled from 'styled-components';
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
  DETAIL,
} from 'const';
import { v4 as uuidv4 } from 'uuid';

const DetailInfo = ({ title, badge, prices, product_description }) => {
  let normal = prices[0];
  let discount = null;
  if (prices.length === 2) {
    discount = prices[0];
    normal = prices[1];
  }

  return (
    <DetailInfoBox>
      <Info name={title} body={product_description} type={DETAIL} />
      <PriceBoxDiv>
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
        <Price normal={normal} discount={discount} type={DETAIL} />
      </PriceBoxDiv>
    </DetailInfoBox>
  );
};

export default DetailInfo;

const DetailInfoBox = styled.div`
  width: 440px;
`;

const TagBoxDiv = styled.div`
  display: flex;
  margin-right: 8px;
`;

const PriceBoxDiv = styled.div`
  display: flex;
  height: 35px;
  align-items: center;
`;
