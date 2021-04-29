import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DetailTitle = ({ detailTitle }) => {
  return (
    <S.DetailLineWrapper>
      <CS.ColorFont.GRAY1_XL_BOLD>{detailTitle}</CS.ColorFont.GRAY1_XL_BOLD>
    </S.DetailLineWrapper>
  );
};

export default DetailTitle;
