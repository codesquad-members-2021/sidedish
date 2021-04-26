import BestItemsHoverBox from "./BestItemsHoverBox";
import BestItemsHoverText from "./BestItemsHoverText";
import BestItemsHoverLine from "./BestItemsHoverLine";

const BestItemsHover = ({ isMouseOver }) => {
  return (
    isMouseOver && (
      <>
        <BestItemsHoverBox></BestItemsHoverBox>
        <BestItemsHoverText></BestItemsHoverText>
        <BestItemsHoverLine></BestItemsHoverLine>
      </>
    )
  );
};

export default BestItemsHover;
