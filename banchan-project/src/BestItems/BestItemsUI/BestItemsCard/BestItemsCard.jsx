import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
import BestItemsCardImage from "./BestItemsCardImage";
import BestItemsCardTitle from "./BestItemsCardTitle";
import BestItemsCardBadge from "./BestItemsCardBadge";
import BestItemsCardDescription from "./BestItemsCardDescription";
import BestItemsCardNPrice from "./BestItemsCardNPrice";
import BestItemsCardSPrice from "./BestItemsCardSPrice";

const BestItemsCard = () => {
  return (
    <S.BestItemsCard>
      <BestItemsCardImage></BestItemsCardImage>
      <BestItemsCardTitle></BestItemsCardTitle>

      <BestItemsCardDescription></BestItemsCardDescription>
      <BestItemsCardNPrice></BestItemsCardNPrice>
      <BestItemsCardSPrice></BestItemsCardSPrice>

      <BestItemsCardBadge></BestItemsCardBadge>
    </S.BestItemsCard>
  );
};

export default BestItemsCard;
