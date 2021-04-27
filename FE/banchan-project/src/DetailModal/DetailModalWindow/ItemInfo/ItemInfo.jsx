import DetailTitle from "./DetailTitle";
import DetailDescription from "./DetailDescription";
import DetailBadge from "./DetailBadge";
import DetailSPrice from "./DetailSPrice";
import DetailNPrice from "./DetailNPrice";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const ItemInfo = ({ props }) => {
  return (
    <S.ItemInfoWrapper>
      <DetailTitle detailTitle={"[미노리키친] 규동 250g"} />
      <DetailDescription detailDescription={props.product_description} />
      <CS.Box.FLEX_ROW_CENTER_BOX>
        <DetailBadge detailBadge={["이벤트특가", "론칭특가"]} />
        <DetailSPrice sPrice={"5200원"} />
        <DetailNPrice nPrice={"6500원"} />
      </CS.Box.FLEX_ROW_CENTER_BOX>
    </S.ItemInfoWrapper>
  );
};

export default ItemInfo;
