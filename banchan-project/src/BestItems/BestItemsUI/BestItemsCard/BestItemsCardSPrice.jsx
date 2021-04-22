import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardSPrice = () => {
  const sale = "31,200원";
  return (
    <S.BestItemsCardSPrice>
      <CS.Card.CardSPrice>{sale}</CS.Card.CardSPrice>
    </S.BestItemsCardSPrice>
  );
};

export default BestItemsCardSPrice;
