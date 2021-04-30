import ResponsiveCard from 'Components/commons/Cards/ResponsiveCard.js';
import TabCard from 'Components/commons/Cards/TabCard';

const Card = ({ type = "default", item, refetchModal, payload }) => {
  switch (type) {
    case "responsive":
      return <ResponsiveCard payload={payload} refetchModal={refetchModal} />
    case "tabs":
      return <TabCard {...{ item, refetchModal }}></TabCard>;
    default:
      return null;
  }
};

export default Card;
