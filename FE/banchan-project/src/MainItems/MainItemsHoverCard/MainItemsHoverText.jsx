import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsHoverText = ({ delivery_type }) => {
  return (
    <>
      <S.ItemsHoverTopText>
        <CS.ColorFont.WHITE_XL_BOLD>
          {delivery_type[0]}
        </CS.ColorFont.WHITE_XL_BOLD>
      </S.ItemsHoverTopText>
      <S.ItemsHoverBottomText>
        <CS.ColorFont.WHITE_XL_BOLD>
          {delivery_type[1]}
        </CS.ColorFont.WHITE_XL_BOLD>
      </S.ItemsHoverBottomText>
    </>
  );
};

export default MainItemsHoverText;
