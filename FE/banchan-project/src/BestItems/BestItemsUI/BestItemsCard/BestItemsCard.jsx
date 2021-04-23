import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
import BestItemsCardImage from "./BestItemsCardImage";
import BestItemsCardTitle from "./BestItemsCardTitle";
import BestItemsCardBadge from "./BestItemsCardBadge";
import BestItemsCardDescription from "./BestItemsCardDescription";
import BestItemsCardNPrice from "./BestItemsCardNPrice";
import BestItemsCardSPrice from "./BestItemsCardSPrice";

const BestItemsCard = ({ item }) => {
  console.log(item);
  const {
    id,
    image,
    title,
    description,
    s_price,
    n_price,
    badge,
    dish_category,
  } = { ...item };

  return (
    <S.BestItemsCard id={id}>
      <BestItemsCardImage {...{ image }}></BestItemsCardImage>
      <BestItemsCardTitle {...{ title }}></BestItemsCardTitle>

      <BestItemsCardDescription {...{ description }}></BestItemsCardDescription>
      <BestItemsCardSPrice {...{ s_price }}></BestItemsCardSPrice>
      <BestItemsCardNPrice {...{ n_price }}></BestItemsCardNPrice>

      <BestItemsCardBadge {...{ badge }}></BestItemsCardBadge>
    </S.BestItemsCard>
  );
};

export default BestItemsCard;
