import styled from 'styled-components';
import DetailInfo from 'components/detail/DetailInfo';
import DetailImage from 'components/detail/DetailImage';
import DetailDelivery from 'components/detail/DetailDelivery';
import DetailOrder from 'components/detail/DetailOrder';
import DetailPrice from 'components/detail/DetailPrice';
import OrderButton from 'components/detail/OrderButton';

const LongLine = () => {
  return <LongLineBox />;
};

const DetailModal = ({
  title,
  badge,
  currentData,
  orderCount,
  plusCount,
  minusCount,
  inputValue,
  setInputValue,
  setOrderCount,
}) => {
  const {
    delivery_fee,
    delivery_info,
    point,
    prices,
    product_description,
    thumb_images,
    top_image,
  } = currentData;

  return (
    <DetailModalBox>
      <ImageBox>
        <DetailImage {...{ top_image, thumb_images }} />
      </ImageBox>
      <InfoBox>
        <DetailInfo {...{ title, badge, prices, product_description }} />
        <LongLine />
        <DetailDelivery {...{ point, delivery_info, delivery_fee }} />
        <LongLine />
        <DetailOrder
          {...{
            orderCount,
            setOrderCount,
            plusCount,
            minusCount,
            inputValue,
            setInputValue,
          }}
        />
        <LongLine />
        <DetailPrice {...{ orderCount, prices }} />
        <OrderButton />
      </InfoBox>
    </DetailModalBox>
  );
};

export default DetailModal;

const DetailModalBox = styled.div`
  width: 960px;
  height: 680px;
  background: #fff;
  border-radius: 5px 5px 0px 0px;
  display: flex;
  justify-content: space-between;
  padding: 48px;
`;

const LongLineBox = styled.div`
  width: 440px;
  height: 1px;
  background: #e0e0e0;
  margin: 24px 0;
`;

const ImageBox = styled.div``;

const InfoBox = styled.div`
  width: 440px;
  height: 416px;
`;
