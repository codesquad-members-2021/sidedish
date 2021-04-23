import { Card } from "../../Styles/commonStyles";

const MainItemsCardSPrice = ({ sPrice }) => {
  return (
    <Card.CardSPrice fontSize={20} lineHeight={29}>
      {sPrice}
    </Card.CardSPrice>
  );
};

export default MainItemsCardSPrice;
