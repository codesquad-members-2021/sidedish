import styled from 'styled-components';

const DetailPrice = ({ orderCount, prices }) => {
  if (prices.length === 2) {
    prices = prices[1];
  } else {
    prices = prices[0];
  }

  const priceList = prices.split('원');
  const price = +priceList[0].split(',').join('');
  const calPrice = price * orderCount;

  const moneyComma = (num) => {
    const arr = num.toString().split('');
    const comma = arr.reduce((acc, cur, idx) => {
      if (idx % 3 === arr.length % 3) {
        cur = `,${cur}`;
      }
      acc += cur;
      return acc;
    });
    return comma;
  };

  const displayMoney = moneyComma(calPrice);

  return (
    <DetailPriceBox>
      <DetailPriceTextSpan>총 주문금액</DetailPriceTextSpan>
      <DetailPriceSpan>{displayMoney}원</DetailPriceSpan>
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
  margin-top: 5px;
`;

const DetailPriceSpan = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  align-items: center;
  font-size: 32px;
  font-weight: 700;
  line-height: 46px;
  text-align: right;
  color: #010101;
`;
