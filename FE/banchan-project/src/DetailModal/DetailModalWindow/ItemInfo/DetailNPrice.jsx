import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DetailNPrice = ({ n_Price }) => {
  return (
    <S.DetailNPriceWrapper>
      <CS.ColorFont.GRAY3_S_NORMAL>
        {n_Price.toLocaleString()}원
      </CS.ColorFont.GRAY3_S_NORMAL>
    </S.DetailNPriceWrapper>
  );
};

export default DetailNPrice;
