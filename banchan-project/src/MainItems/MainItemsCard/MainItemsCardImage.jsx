import { Card } from "../../Styles/commonStyles";

const MainItemsCardImage = ({ image, alt }) => {
  return <Card.CardImage width={308} height={308} imgUrl={image} alt={alt} />;
};

export default MainItemsCardImage;
