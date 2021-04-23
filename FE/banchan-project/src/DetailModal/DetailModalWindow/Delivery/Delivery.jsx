import DeliveryTitle from "./DeliveryTitle";
import DeliveryContents from "./DeliveryContents";
import * as CS from "../../../Styles/commonStyles";

const Delivery = ({ props }) => {
  return (
    <>
      <CS.flexBox display={"flex"}>
        <DeliveryTitle title={"적립금"} />
        <DeliveryContents contents={props.point} />
      </CS.flexBox>
      <CS.flexBox display={"flex"}>
        <DeliveryTitle title={"배송정보"} />
        <DeliveryContents contents={props.delivery_info} />
      </CS.flexBox>
      <CS.flexBox display={"flex"}>
        <DeliveryTitle title={"배송비"} />
        <DeliveryContents contents={props.delivery_fee} />
      </CS.flexBox>
    </>
  );
};

export default Delivery;
