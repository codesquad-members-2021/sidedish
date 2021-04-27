import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardSPrice = ({ s_price }) => {
  return (
    <S.BestItemsCardSPrice>
      <CS.ColorFont.BLACK_L_BOLD>{`${s_price.toLocaleString()}원`}</CS.ColorFont.BLACK_L_BOLD>
    </S.BestItemsCardSPrice>
  );
};

export default BestItemsCardSPrice;
