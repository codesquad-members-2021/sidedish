import styled from 'styled-components';

const Price = ({ normal, discount }) => {
  return (
    <PriceBoxDiv>
      <Normal normal={normal} />
      <Discount discount={discount} />
    </PriceBoxDiv>
  );
};

const Normal = ({ normal }) => {
  return <NormalDiv>{normal || `10,700원`}</NormalDiv>;
};
const Discount = ({ discount }) => {
  if (!discount) return null;
  return <DiscountDiv>{discount}</DiscountDiv>;
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
  margin: 0px 8px;
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
`;
