import RecommendedItemsCardImage from "./RecommendedItemsCardImage";
import RecommendedItemsCardTitle from "./RecommendedItemsCardTitle";
import RecommendedItemsCardPrice from "./RecommendedItemsCardPrice";

const RecommendedItemsCard = ({ images }) => {
  return images.map((image, index) => (
    <div key={index}>
      <RecommendedItemsCardImage image={image}></RecommendedItemsCardImage>
      <RecommendedItemsCardTitle
        cardTitle={"[희래식당] 마라탕, 크림새우 맛집"}
      />
      <RecommendedItemsCardPrice price={"5000원"} />
    </div>
  ));
};

export default RecommendedItemsCard;
