import { Card } from "../../../Styles/commonStyles";

const DetailDescription = ({ detailDescription }) => {
  return (
    <Card.CardDescription fontSize={18} lineHeight={26}>
      {detailDescription}
    </Card.CardDescription>
  );
};

export default DetailDescription;
