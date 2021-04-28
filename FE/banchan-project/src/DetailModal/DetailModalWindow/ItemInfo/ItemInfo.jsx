import DetailTitle from "./DetailTitle";
import DetailDescription from "./DetailDescription";
import DetailBadge from "./DetailBadge";
import DetailSPrice from "./DetailSPrice";
import DetailNPrice from "./DetailNPrice";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const ItemInfo = ({ data }) => {
  return (
    <S.ItemInfoWrapper>
      <DetailTitle detailTitle={data.title} />
      <DetailDescription detailDescription={data.description} />
      <CS.Box.FLEX_ROW_CENTER_BOX>
        <DetailBadge detailBadge={data.badge} />
        <DetailSPrice s_Price={data.s_price} />
        {data.s_price === data.n_price ? null : (
          <DetailNPrice n_Price={data.n_price} />
        )}
      </CS.Box.FLEX_ROW_CENTER_BOX>
    </S.ItemInfoWrapper>
  );
};

export default ItemInfo;
