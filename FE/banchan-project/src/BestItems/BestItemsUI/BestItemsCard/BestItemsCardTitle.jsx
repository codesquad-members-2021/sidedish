import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";

const BestItemsCardTitle = ({ title }) => {
  return (
    <S.BestItemsCardTitle>
      <CS.ColorFont.GRAY1_S_NORMAL>{title}</CS.ColorFont.GRAY1_S_NORMAL>
    </S.BestItemsCardTitle>
  );
};

export default BestItemsCardTitle;
