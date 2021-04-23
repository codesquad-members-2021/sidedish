import { Card } from "../../../Styles/commonStyles";

const DetailSPrice = ({ sPrice }) => {
  return (
    <Card.CardSPrice fontSize={24} lineHeight={35}>
      {sPrice}
    </Card.CardSPrice>
  );
};

export default DetailSPrice;
