import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";

const BestItemsCardTitle = () => {
  const title = "[소중한 식사] 경상도 한상차림";
  return (
    <S.BestItemsCardTitle>
      <CS.Card.CardTitle>{title}</CS.Card.CardTitle>
    </S.BestItemsCardTitle>
  );
};

export default BestItemsCardTitle;
