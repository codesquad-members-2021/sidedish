import styled from 'styled-components';

const DetailPrice = ({ prices }) => {
  if (prices.length === 2) {
    prices = prices[1];
  }
  return (
    <DetailPriceBox>
      <DetailPriceTextSpan>총 주문금액</DetailPriceTextSpan>
      <DetailPriceSpan>{prices}</DetailPriceSpan>
    </DetailPriceBox>
  );
};

export default DetailPrice;

const DetailPriceBox = styled.div`
  display: flex;
  align-items: center;
  justify-content: flex-end;
  margin: 24px 0;
`;

const DetailPriceTextSpan = styled.div`
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;
  text-align: right;
  color: #828282;
  margin-right: 24px;
`;

const DetailPriceSpan = styled.div`
  align-items: center;
  font-size: 32px;
  font-weight: 700;
  line-height: 46px;
  text-align: right;
  color: #010101;
`;
