import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardNPrice = ({ n_price }) => {
  return (
    <S.BestItemsCardNPrice>
      <CS.Card.CardNPrice>{n_price}</CS.Card.CardNPrice>
    </S.BestItemsCardNPrice>
  );
};

export default BestItemsCardNPrice;
