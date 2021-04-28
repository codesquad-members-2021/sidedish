import * as S from "../../BestItemsStyles";
import { ColorFont } from "../../../Styles/commonStyles";

const BestItemsHoverText = ({ deliveryType }) => {
  return deliveryType ? (
    <>
      <S.BestItemsHoverTopText>
        <ColorFont.WHITE_XL_BOLD>{deliveryType[0]}</ColorFont.WHITE_XL_BOLD>
      </S.BestItemsHoverTopText>
      <S.BestItemsHoverBottomText>
        <ColorFont.WHITE_XL_BOLD>{deliveryType[1]}</ColorFont.WHITE_XL_BOLD>
      </S.BestItemsHoverBottomText>
    </>
  ) : null;
};

export default BestItemsHoverText;
