import MainItemsHoverBox from "./MainItemsHoverBox";
import MainItemsHoverText from "./MainItemsHoverText";
import MainItemsHoverLine from "./MainItemsHoverLine";

const MainItemsHover = ({ isMouseOver, delivery_type }) => {
  return (
    isMouseOver && (
      <>
        <MainItemsHoverBox></MainItemsHoverBox>
        <MainItemsHoverText delivery_type={delivery_type}></MainItemsHoverText>
        <MainItemsHoverLine></MainItemsHoverLine>
      </>
    )
  );
};

export default MainItemsHover;
