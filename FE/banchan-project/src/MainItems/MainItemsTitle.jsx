import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles.jsx";

const MainItemsTitle = ({ categoryTitle }) => {
  return (
    <S.MainItemsTitleWrapper>
      <CS.ColorFont.GRAY1_XL_BOLD>{categoryTitle}</CS.ColorFont.GRAY1_XL_BOLD>
    </S.MainItemsTitleWrapper>
  );
};

export default MainItemsTitle;
