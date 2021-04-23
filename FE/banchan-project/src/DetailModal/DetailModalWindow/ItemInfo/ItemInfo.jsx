import DetailTitle from "./DetailTitle";
import DetailDescription from "./DetailDescription";
import DetailBadge from "./DetailBadge";
import DetailSPrice from "./DetailSPrice";
import DetailNPrice from "./DetailNPrice";
import * as CS from "../../../Styles/commonStyles";

const ItemInfo = ({ props }) => {
  return (
    <CS.flexBox display={"inline-block"} flexDirection={"column"}>
      <DetailTitle detailTitle={"[미노리키친] 규동 250g"} />
      <DetailDescription detailDescription={props.product_description} />
      <CS.flexBox display={"flex"} alignItems={"center"}>
        <DetailBadge detailBadge={["이벤트특가", "론칭특가"]} />
        <DetailSPrice sPrice={"5200원"} />
        <DetailNPrice nPrice={"6500원"} />
      </CS.flexBox>
    </CS.flexBox>
  );
};

export default ItemInfo;
