import { Card } from "../../Styles/commonStyles";

const MainItemsCardImage = ({ image, alt }) => {
  return <Card.CardImage width={296} height={296} src={image} alt={alt} />;
};

export default MainItemsCardImage;
