import * as CS from "../../../../Styles/commonStyles";

const RecommendedItemsCardPrice = ({ price }) => {
  return (
    <CS.ColorFont.GRAY1_XS_BOLD>
      {price.toLocaleString()}원
    </CS.ColorFont.GRAY1_XS_BOLD>
  );
};

export default RecommendedItemsCardPrice;
