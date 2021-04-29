import BestItemsHoverBox from "./BestItemsHoverBox";
import BestItemsHoverText from "./BestItemsHoverText";
import BestItemsHoverLine from "./BestItemsHoverLine";

const BestItemsHover = ({ isMouseOver, deliveryType }) => {
  return (
    isMouseOver && (
      <>
        <BestItemsHoverBox></BestItemsHoverBox>
        <BestItemsHoverText {...{ deliveryType }}></BestItemsHoverText>
        <BestItemsHoverLine></BestItemsHoverLine>
      </>
    )
  );
};

export default BestItemsHover;
