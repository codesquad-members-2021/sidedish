import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardBadge = () => {
  const badges = ["이벤트 특가"]; //뱃지 arr length에 따라.. 스타일도다르게
  return (
    <S.BestItemsCardBadge>
      <CS.Card.CardEventBadge>{badges[0]}</CS.Card.CardEventBadge>
    </S.BestItemsCardBadge>
  );
};

export default BestItemsCardBadge;
