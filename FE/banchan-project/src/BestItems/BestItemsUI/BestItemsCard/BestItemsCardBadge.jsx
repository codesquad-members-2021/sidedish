import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardBadge = ({ badge }) => {
  console.log(badge);
  return (
    <S.BestItemsCardBadge>
      <CS.Card.CardEventBadge>{badge}</CS.Card.CardEventBadge>
    </S.BestItemsCardBadge>
  );
};

export default BestItemsCardBadge;
