import { useState } from "react";
import { BestItemsCardImageWrapper } from "../../BestItemsStyles";
import BestItemsHover from "../BestItemsHover/BestItemsHover";
import * as CS from "../../../Styles/commonStyles";

const BestItemsCardImage = ({ image, delivery }) => {
  const [isMouseOver, setIsMouseOver] = useState(false);
  const deliveryType = [...delivery];

  return (
    <BestItemsCardImageWrapper
      onMouseEnter={() => setIsMouseOver(true)}
      onMouseLeave={() => setIsMouseOver(false)}
    >
      <CS.Image.BEST_ITEMS src={image}></CS.Image.BEST_ITEMS>
      <BestItemsHover {...{ isMouseOver, deliveryType }}></BestItemsHover>
    </BestItemsCardImageWrapper>
  );
};

export default BestItemsCardImage;
