import preparingImage from 'images/preparingImage.jpg';
import ResponsiveCard from 'Components/commons/Cards/ResponsiveCard.js';
import TabCard from 'Components/commons/Cards/TabCard';

const Card = ({ type = "default", number, item, dispatchModal }) => {
  switch (type) {
    case "responsive":
      return <ResponsiveCard number={number} loadingImage={preparingImage} SpecialLabelTag />
    case "tabs":
      return <TabCard {...{ item, dispatchModal }}></TabCard>;
    default:
      return null;
  }
};

export default Card;
