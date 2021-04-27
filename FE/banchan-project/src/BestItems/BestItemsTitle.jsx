import * as S from "./BestItemsStyles";
import * as CS from "../Styles/commonStyles.jsx";

const BestItemsTitle = ({ titleList }) => {
  return (
    <S.BestItemsTitle>
      <CS.ColorFont.GRAY1_XL_BOLD>
        후기가 증명하는 베스트 반찬
      </CS.ColorFont.GRAY1_XL_BOLD>
    </S.BestItemsTitle>
  );
};

export default BestItemsTitle;
