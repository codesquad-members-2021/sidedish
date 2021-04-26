import styled from 'styled-components';
import Info from 'components/card/Info';
import Price from 'components/card/Price';

const DetailInfo = ({ title, prices, product_description }) => {
  let normal = prices[1];
  let discount = null;
  if (prices.length === 2) {
    discount = prices[0];
  }

  return (
    <DetailInfoBox>
      <Info name={title} body={product_description} />
      <Price normal={normal} discount={discount} />
    </DetailInfoBox>
  );
};

export default DetailInfo;

const DetailInfoBox = styled.div`
  width: 440px;
`;
