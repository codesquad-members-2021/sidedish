import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardNPrice = ({ s_price, n_price }) => {
  return (
    n_price !== s_price && (
      <S.BestItemsCardNPrice>
        <CS.ColorFont.GRAY4_XS_NORMAL>{`${n_price.toLocaleString()}원`}</CS.ColorFont.GRAY4_XS_NORMAL>
      </S.BestItemsCardNPrice>
    )
  );
};

export default BestItemsCardNPrice;
