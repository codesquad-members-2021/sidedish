import { DETAIL, SIZE_SMALL } from 'const';
import styled, { css } from 'styled-components';

const Price = ({ normal, discount, type, cardSize }) => {
  return (
    <PriceBoxDiv {...{ cardSize }}>
      <Normal {...{ normal, type, cardSize }} />
      <Discount {...{ normal, discount, type, cardSize }} />
    </PriceBoxDiv>
  );
};

const Normal = ({ normal, type, cardSize }) => {
  return <NormalDiv {...{ type, cardSize }}>{normal}</NormalDiv>;
};
const Discount = ({ normal, discount, type, cardSize }) => {
  if (!discount) return null;
  return (
    <DiscountDiv {...{ normal, discount, type, cardSize }}>
      {discount}
    </DiscountDiv>
  );
};

export default Price;

const PriceBoxDiv = styled.div`
  display: flex;
  flex-direction: row;
  align-items: flex-end;
  margin: 16px 0px;
  padding: 0px;
  ${({ cardSize }) =>
    cardSize === SIZE_SMALL &&
    css`
      margin: 0;
    `}
`;

const NormalDiv = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 800;
  font-size: 20px;
  line-height: 29px;
  color: #010101;
  ${({ type }) =>
    type === DETAIL &&
    css`
      font-size: 24px;
      line-height: 35px;
    `}
  ${({ cardSize }) =>
    cardSize === SIZE_SMALL &&
    css`
      font-size: 14px;
      line-height: 20px;
    `}
`;

const DiscountDiv = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 14px;
  line-height: 20px;
  text-decoration-line: line-through;
  color: #bdbdbd;
  margin: 0px 8px;
  ${({ type }) =>
    type === DETAIL &&
    css`
      font-size: 16px;
      line-height: 23px;
    `}
  ${({ cardSize }) =>
    cardSize === SIZE_SMALL &&
    css`
      font-size: 14px;
      line-height: 20px;
      color: #010101;
      font-weight: 800;
      text-decoration: none;
    `}
  ${({ normal, discount }) =>
    normal &&
    discount &&
    css`
      color: #fff;
    `}
`;
