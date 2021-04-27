import * as CS from "../../../Styles/commonStyles";

const TotalPrice = ({ count, price }) => {
  return (
    <CS.ColorFont.BLACK_XXL_BOLD>{count * price}원</CS.ColorFont.BLACK_XXL_BOLD>
  );
};

export default TotalPrice;
