import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardDescription = () => {
  const description = "경상도 명물요리 세 가지를 한 상에!";
  return (
    <S.BestItemsCardDescription>
      <CS.Card.CardDescription> {description}</CS.Card.CardDescription>
    </S.BestItemsCardDescription>
  );
};

export default BestItemsCardDescription;
