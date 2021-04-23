import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardDescription = ({ description }) => {
  return (
    <S.BestItemsCardDescription>
      <CS.Card.CardDescription> {description}</CS.Card.CardDescription>
    </S.BestItemsCardDescription>
  );
};

export default BestItemsCardDescription;
