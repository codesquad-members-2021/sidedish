import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsHoverText = ({ delivery_type }) => {
  return (
    <>
      <S.BestItemsHoverTopText>
        <CS.ColorFont.WHITE_XL_BOLD>
          {delivery_type[0]}
        </CS.ColorFont.WHITE_XL_BOLD>
      </S.BestItemsHoverTopText>
      <S.BestItemsHoverBottomText>
        <CS.ColorFont.WHITE_XL_BOLD>
          {delivery_type[1]}
        </CS.ColorFont.WHITE_XL_BOLD>
      </S.BestItemsHoverBottomText>
    </>
  );
};

export default MainItemsHoverText;
