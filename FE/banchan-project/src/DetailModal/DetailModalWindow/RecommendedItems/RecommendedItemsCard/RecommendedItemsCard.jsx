import RecommendedItemsCardImage from "./RecommendedItemsCardImage";
import RecommendedItemsCardTitle from "./RecommendedItemsCardTitle";
import RecommendedItemsCardPrice from "./RecommendedItemsCardPrice";
import * as S from "../../../DetailModalStyles";
import * as CS from "../../../../Styles/commonStyles";

const RecommendedItemsCard = ({ recommended, handleClickCard }) => {
  return (
    <S.RecommendedItemsCardWrapper>
      {recommended.map((item, index) => (
        <CS.Box.FLEX_COLUMN_BOX key={index}>
          <RecommendedItemsCardImage
            image={item.image}
            detail_url={item.detail_url}
            handleClickCard={handleClickCard}
          ></RecommendedItemsCardImage>
          <RecommendedItemsCardTitle cardTitle={item.title} />
          <RecommendedItemsCardPrice price={item.price} />
        </CS.Box.FLEX_COLUMN_BOX>
      ))}
    </S.RecommendedItemsCardWrapper>
  );
};

export default RecommendedItemsCard;
