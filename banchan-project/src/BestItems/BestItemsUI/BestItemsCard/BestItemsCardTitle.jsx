import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";

const BestItemsCardTitle = ({ title }) => {
  return (
    <S.BestItemsCardTitle>
      <CS.Card.CardTitle>{title}</CS.Card.CardTitle>
    </S.BestItemsCardTitle>
  );
};

export default BestItemsCardTitle;
