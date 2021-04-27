import { useState } from "react";
import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";

import BestItemsCardImage from "./BestItemsCardImage";
import BestItemsCardTitle from "./BestItemsCardTitle";
import BestItemsCardBadge from "./BestItemsCardBadge";
import BestItemsCardDescription from "./BestItemsCardDescription";
import BestItemsCardNPrice from "./BestItemsCardNPrice";
import BestItemsCardSPrice from "./BestItemsCardSPrice";

const BestItemsCard = ({ item }) => {
  const { id, image, title, description, s_price, n_price, badge } = item;
  const [isMouseOver, setIsMouseOver] = useState(false);
  const handleMouseEnter = e => {
    setIsMouseOver(true);
    console.log("over");
  };

  const handleMouseLeave = () => {
    setIsMouseOver(false);
    console.log("out");
  };
  return (
    <S.BestItemsCard id={id}>
      <BestItemsCardImage
        {...{ image }}
        onMouseEnter={handleMouseEnter}
        onMouseLeave={handleMouseLeave}
      ></BestItemsCardImage>
      <BestItemsCardTitle {...{ title }}></BestItemsCardTitle>

      <BestItemsCardDescription {...{ description }}></BestItemsCardDescription>
      <BestItemsCardSPrice {...{ s_price }}></BestItemsCardSPrice>
      <BestItemsCardNPrice {...{ n_price }}></BestItemsCardNPrice>

      <BestItemsCardBadge {...{ badge }}></BestItemsCardBadge>
    </S.BestItemsCard>
  );
};

export default BestItemsCard;
