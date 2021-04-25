import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DeliveryTitle = ({ title }) => {
  return (
    <S.DeliveryTitleWrapper>
      <CS.ColorFont.GRAY3_S_NORMAL>{title}</CS.ColorFont.GRAY3_S_NORMAL>
    </S.DeliveryTitleWrapper>
  );
};

export default DeliveryTitle;
