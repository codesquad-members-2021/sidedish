import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DetailSPrice = ({ sPrice }) => {
  return (
    <S.DetailSPriceWrapper>
      <CS.ColorFont.GRAY1_XL_BOLD>{sPrice}</CS.ColorFont.GRAY1_XL_BOLD>
    </S.DetailSPriceWrapper>
  );
};

export default DetailSPrice;
