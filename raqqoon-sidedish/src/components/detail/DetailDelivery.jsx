import styled from 'styled-components';

const DetailDelivery = ({ point, delivery_info, delivery_fee }) => {
  return (
    <DetailDeliveryDiv>
      <TextBox>
        <LabelBox>적립금</LabelBox>
        <InfoBox>{point}</InfoBox>
      </TextBox>
      <TextBox>
        <LabelBox>배송정보</LabelBox>
        <InfoBox>{delivery_info}</InfoBox>
      </TextBox>
      <TextBox>
        <LabelBox>배송비</LabelBox>
        <InfoBox>{delivery_fee}</InfoBox>
      </TextBox>
    </DetailDeliveryDiv>
  );
};

export default DetailDelivery;

const DetailDeliveryDiv = styled.div``;

const TextBox = styled.div`
  display: grid;
  grid-template-columns: 17% 83%;
  align-items: center;
`;

const LabelBox = styled.div`
  margin: 8px 0;
  font-size: 16px;
  line-height: 23px;
  color: #828282;
`;

const InfoBox = styled.div`
  font-size: 16px;
  line-height: 23px;
  color: #4f4f4f;
`;
