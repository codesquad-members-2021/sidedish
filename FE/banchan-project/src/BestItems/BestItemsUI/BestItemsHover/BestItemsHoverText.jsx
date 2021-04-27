import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";

const BestItemsHoverText = () => {
  return (
    <>
      <S.BestItemsHoverTopText>
        <CS.ColorFont.WHITE_XL_BOLD>새벽 배송</CS.ColorFont.WHITE_XL_BOLD>
      </S.BestItemsHoverTopText>
      <S.BestItemsHoverBottomText>
        <CS.ColorFont.WHITE_XL_BOLD>전국 택배</CS.ColorFont.WHITE_XL_BOLD>
      </S.BestItemsHoverBottomText>
    </>
  );
};

export default BestItemsHoverText;
