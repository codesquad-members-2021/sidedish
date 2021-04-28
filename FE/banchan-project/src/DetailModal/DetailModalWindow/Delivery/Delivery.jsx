import DeliveryTitle from "./DeliveryTitle";
import DeliveryContents from "./DeliveryContents";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const Delivery = ({ data }) => {
  return (
    <S.DeliveryWrapper>
      <CS.Box.FLEX_ROW_BOX>
        <DeliveryTitle title={"적립금"} />
        <DeliveryContents contents={data.point} />
      </CS.Box.FLEX_ROW_BOX>

      <CS.Box.FLEX_ROW_BOX>
        <DeliveryTitle title={"배송정보"} />
        <DeliveryContents
          contents={
            "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다."
          }
        />
      </CS.Box.FLEX_ROW_BOX>

      <CS.Box.FLEX_ROW_BOX>
        <DeliveryTitle title={"배송비"} />
        <DeliveryContents
          contents={data.delivery_fee}
          deliveryDescription={data.delivery_description}
        />
      </CS.Box.FLEX_ROW_BOX>
    </S.DeliveryWrapper>
  );
};

export default Delivery;
