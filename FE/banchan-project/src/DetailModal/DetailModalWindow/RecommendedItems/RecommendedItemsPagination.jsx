import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const RecommendedItemsPagination = ({ page }) => {
  return (
    <S.RecommendedItemsPaginationWrapper>
      <CS.ColorFont.GRAY1_XS_NORMAL>
        Page : {page}/2
      </CS.ColorFont.GRAY1_XS_NORMAL>
    </S.RecommendedItemsPaginationWrapper>
  );
};

export default RecommendedItemsPagination;
