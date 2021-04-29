import { useState } from "react";
import MainItemsHover from "../MainItemsHoverCard/MainItemsHover";
import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCardImage = ({
  image,
  alt,
  detailUrl,
  delivery_type,
  handleClickCard,
}) => {
  const [isMouseOver, setIsMouseOver] = useState(false);
  return (
    <S.CategoryItemsCardImageWrapper
      onMouseEnter={() => setIsMouseOver(true)}
      onMouseLeave={() => setIsMouseOver(false)}
      onClick={() => handleClickCard(detailUrl)}
    >
      <CS.Image.MAIN_ITEMS src={image} alt={alt} />
      <MainItemsHover {...{ isMouseOver, delivery_type }}></MainItemsHover>
    </S.CategoryItemsCardImageWrapper>
  );
};

export default MainItemsCardImage;
