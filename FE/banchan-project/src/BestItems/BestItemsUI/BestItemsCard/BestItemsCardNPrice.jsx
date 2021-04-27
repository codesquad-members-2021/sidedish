import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardNPrice = ({ n_price }) => {
  return (
    <S.BestItemsCardNPrice>
      <CS.ColorFont.GRAY4_XS_NORMAL>{n_price}</CS.ColorFont.GRAY4_XS_NORMAL>
    </S.BestItemsCardNPrice>
  );
};

export default BestItemsCardNPrice;
