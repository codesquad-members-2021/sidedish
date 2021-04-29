import * as S from "../../BestItemsStyles";

import BestItemsCardImage from "./BestItemsCardImage";
import BestItemsCardTitle from "./BestItemsCardTitle";
import BestItemsCardBadge from "./BestItemsCardBadge";
import BestItemsCardDescription from "./BestItemsCardDescription";
import BestItemsCardNPrice from "./BestItemsCardNPrice";
import BestItemsCardSPrice from "./BestItemsCardSPrice";

const BestItemsCard = ({ item, handleClickCard }) => {
  const {
    id,
    image,
    title,
    description,
    s_price,
    n_price,
    badge,
    delivery_type,
    detail_url,
  } = item;

  return (
    <S.BestItemsCard id={id}>
      <BestItemsCardImage
        image={image}
        delivery={delivery_type}
        detailURL={detail_url}
        handleClickCard={handleClickCard}
      ></BestItemsCardImage>
      <BestItemsCardTitle {...{ title }}></BestItemsCardTitle>

      <BestItemsCardDescription {...{ description }}></BestItemsCardDescription>
      <BestItemsCardSPrice {...{ s_price }}></BestItemsCardSPrice>
      <BestItemsCardNPrice {...{ s_price, n_price }}></BestItemsCardNPrice>

      <BestItemsCardBadge {...{ badge }}></BestItemsCardBadge>
    </S.BestItemsCard>
  );
};

export default BestItemsCard;
