import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCardDescription = ({ description }) => {
  return (
    <S.MainItemsCardDescriptionWrapper>
      <CS.ColorFont.GRAY3_XS_NORMAL>{description}</CS.ColorFont.GRAY3_XS_NORMAL>
    </S.MainItemsCardDescriptionWrapper>
  );
};

export default MainItemsCardDescription;
