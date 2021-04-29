import RecommendedItemsCardImage from "./RecommendedItemsCardImage";
import RecommendedItemsCardTitle from "./RecommendedItemsCardTitle";
import RecommendedItemsCardPrice from "./RecommendedItemsCardPrice";
import Slider from "../../../../Slider/Slider";
import * as CS from "../../../../Styles/commonStyles";

const RecommendedItemsCard = ({ recommended, handleClickCard, optionalFn }) => {
  const cards = recommended.map((item, index) => (
    <CS.Box.FLEX_COLUMN_BOX key={index}>
      <RecommendedItemsCardImage
        image={item.image}
        detail_url={item.detail_url}
        handleClickCard={handleClickCard}
      ></RecommendedItemsCardImage>
      <RecommendedItemsCardTitle cardTitle={item.title} />
      <RecommendedItemsCardPrice price={item.price} />
    </CS.Box.FLEX_COLUMN_BOX>
  ));

  return (
    <>
      <Slider
        sliderWidth={864}
        cardWidth={176}
        cardShown={5}
        totalCardCount={cards.length}
        transition={"all 0.5s"}
        cards={cards}
        leftButton={<CS.Button.LEFT_BUTTON />}
        rightButton={<CS.Button.RIGHT_BUTTON />}
        optionalFn={optionalFn}
      />
    </>
  );
};

export default RecommendedItemsCard;
