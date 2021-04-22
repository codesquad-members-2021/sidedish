import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardNPrice = () => {
  const sale = "39,000원";
  return (
    <S.BestItemsCardNPrice>
      <CS.Card.CardNPrice>{sale}</CS.Card.CardNPrice>
    </S.BestItemsCardNPrice>
  );
};

export default BestItemsCardNPrice;
