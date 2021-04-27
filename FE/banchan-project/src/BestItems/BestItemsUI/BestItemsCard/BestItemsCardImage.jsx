import { useState } from "react";
import * as CS from "../../../Styles/commonStyles";
import BestItemsHover from "../BestItemsHover/BestItemsHover";
import { BestItemsCardImageWrapper } from "../../BestItemsStyles";

const BestItemsCardImage = ({ image }) => {
  const [isMouseOver, setIsMouseOver] = useState(false);
  return (
    <BestItemsCardImageWrapper
      onMouseEnter={() => setIsMouseOver(true)}
      onMouseLeave={() => setIsMouseOver(false)}
    >
      <CS.Image.BEST_ITEMS src={image}></CS.Image.BEST_ITEMS>
      <BestItemsHover {...{ isMouseOver }}></BestItemsHover>
    </BestItemsCardImageWrapper>
  );
};

export default BestItemsCardImage;
