import * as S from "../../../DetailModalStyles";
import * as CS from "../../../../Styles/commonStyles";

const RecommendedItemsCardTitle = ({ cardTitle }) => {
  return (
    <S.RecommendedItemsCardTitleWrapper>
      <CS.ColorFont.GRAY1_S_NORMAL>{cardTitle}</CS.ColorFont.GRAY1_S_NORMAL>
    </S.RecommendedItemsCardTitleWrapper>
  );
};

export default RecommendedItemsCardTitle;
