import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles.jsx";

const MainItemsTitle = ({ categoryTitle }) => {
  return (
    <S.CategoryItemsTitleWrapper>
      <CS.ColorFont.GRAY1_XL_BOLD>{categoryTitle}</CS.ColorFont.GRAY1_XL_BOLD>
    </S.CategoryItemsTitleWrapper>
  );
};

export default MainItemsTitle;
