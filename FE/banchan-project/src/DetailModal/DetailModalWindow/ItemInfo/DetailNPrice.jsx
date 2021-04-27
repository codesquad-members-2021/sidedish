import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DetailNPrice = ({ nPrice }) => {
  return (
    <S.DetailNPriceWrapper>
      <CS.ColorFont.GRAY3_S_NORMAL>{nPrice}</CS.ColorFont.GRAY3_S_NORMAL>
    </S.DetailNPriceWrapper>
  );
};

export default DetailNPrice;
