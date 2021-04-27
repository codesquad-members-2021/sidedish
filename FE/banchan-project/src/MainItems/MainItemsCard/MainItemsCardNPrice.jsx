import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCardNPrice = ({ nPrice }) => {
  return (
    <S.MainItemsCardNPriceWrapper>
      <CS.ColorFont.GRAY4_XS_NORMAL>
        {nPrice.toLocaleString()}원
      </CS.ColorFont.GRAY4_XS_NORMAL>
    </S.MainItemsCardNPriceWrapper>
  );
};

export default MainItemsCardNPrice;
