import { Card } from "../../Styles/commonStyles";

const MainItemsCardDescription = ({ description }) => {
  return (
    <Card.CardDescription fontSize={14} lineHeight={20}>
      {description}
    </Card.CardDescription>
  );
};

export default MainItemsCardDescription;
