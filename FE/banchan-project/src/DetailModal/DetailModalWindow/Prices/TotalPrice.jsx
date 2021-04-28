import * as CS from "../../../Styles/commonStyles";

const TotalPrice = ({ count, price }) => {
  let totalPrice = count * price;
  return (
    <CS.ColorFont.BLACK_XXL_BOLD>
      {totalPrice.toLocaleString()}원
    </CS.ColorFont.BLACK_XXL_BOLD>
  );
};

export default TotalPrice;
