import { DETAIL } from 'const';
import styled, { css } from 'styled-components';

const Price = ({ normal, discount, type }) => {
  return (
    <PriceBoxDiv>
      <Normal normal={normal} type={type} />
      <Discount discount={discount} type={type} />
    </PriceBoxDiv>
  );
};

const Normal = ({ normal, type }) => {
  return <NormalDiv type={type}>{normal}</NormalDiv>;
};
const Discount = ({ discount, type }) => {
  if (!discount) return null;
  return <DiscountDiv type={type}>{discount}</DiscountDiv>;
};

export default Price;

const PriceBoxDiv = styled.div`
  display: flex;
  flex-direction: row;
  align-items: flex-end;
  margin: 16px 0px;
  padding: 0px;
`;

const NormalDiv = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 800;
  font-size: 20px;
  line-height: 29px;
  color: #010101;
  ${(props) =>
    props.type === DETAIL &&
    css`
      font-size: 24px;
      line-height: 35px;
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
  ${(props) =>
    props.type === DETAIL &&
    css`
      font-size: 16px;
      line-height: 23px;
    `}
`;
