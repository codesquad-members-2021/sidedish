import { Card } from "../../../Styles/commonStyles";

const DetailNPrice = ({ nPrice }) => {
  return (
    <Card.CardNPrice fontSize={16} lineHeight={23}>
      {nPrice}
    </Card.CardNPrice>
  );
};

export default DetailNPrice;
