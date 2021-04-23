import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardSPrice = ({ s_price }) => {
  return (
    <S.BestItemsCardSPrice>
      <CS.Card.CardSPrice>{s_price}</CS.Card.CardSPrice>
    </S.BestItemsCardSPrice>
  );
};

export default BestItemsCardSPrice;
