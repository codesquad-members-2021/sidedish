import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles";

const TotalCategoryButton = ({ totalButtonFlag, handleClickTotalButton }) => {
  let buttonText;
  totalButtonFlag === true
    ? (buttonText = "모든 카테고리 보기")
    : (buttonText = "숨기기");
  return (
    <S.TotalCategoryButton onClick={handleClickTotalButton}>
      <CS.ColorFont.GRAY1_M_BOLD>{buttonText}</CS.ColorFont.GRAY1_M_BOLD>
    </S.TotalCategoryButton>
  );
};

export default TotalCategoryButton;
