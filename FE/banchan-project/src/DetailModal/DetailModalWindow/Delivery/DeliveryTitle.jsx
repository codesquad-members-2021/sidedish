import { Card } from "../../../Styles/commonStyles";

const DeliveryTitle = ({ title }) => {
  return (
    <Card.CardDescription fontSize={16} lineHeight={23}>
      {title}
    </Card.CardDescription>
  );
};

export default DeliveryTitle;
