import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCardNPrice = ({ nPrice }) => {
  return (
    <S.CategoryItemsCardNPriceWrapper>
      <CS.ColorFont.GRAY4_XS_NORMAL>
        {nPrice.toLocaleString()}원
      </CS.ColorFont.GRAY4_XS_NORMAL>
    </S.CategoryItemsCardNPriceWrapper>
  );
};

export default MainItemsCardNPrice;
