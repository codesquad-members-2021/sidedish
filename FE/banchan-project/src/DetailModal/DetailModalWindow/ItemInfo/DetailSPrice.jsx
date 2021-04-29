import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DetailSPrice = ({ s_Price }) => {
  return (
    <S.DetailSPriceWrapper>
      <CS.ColorFont.GRAY1_XL_BOLD>
        {s_Price.toLocaleString()}원
      </CS.ColorFont.GRAY1_XL_BOLD>
    </S.DetailSPriceWrapper>
  );
};

export default DetailSPrice;
