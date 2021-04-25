import RecommendedItemsCardImage from "./RecommendedItemsCardImage";
import RecommendedItemsCardTitle from "./RecommendedItemsCardTitle";
import RecommendedItemsCardPrice from "./RecommendedItemsCardPrice";
import * as S from "../../../DetailModalStyles";
import * as CS from "../../../../Styles/commonStyles";

const RecommendedItemsCard = ({ images }) => {
  return (
    <S.RecommendedItemsCardWrapper>
      {images.map((image, index) => (
        <CS.Box.FLEX_COLUMN_BOX key={index}>
          <RecommendedItemsCardImage image={image}></RecommendedItemsCardImage>
          <RecommendedItemsCardTitle
            cardTitle={"[희래식당] 마라탕, 크림새우 맛집"}
          />
          <RecommendedItemsCardPrice price={"5000원"} />
        </CS.Box.FLEX_COLUMN_BOX>
      ))}
    </S.RecommendedItemsCardWrapper>
  );
};

export default RecommendedItemsCard;
