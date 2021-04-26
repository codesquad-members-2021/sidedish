import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DeliveryContents = ({ contents }) => {
  return (
    <S.DeliveryContentsWrapper>
      <CS.ColorFont.GRAY2_S_NORMAL>{contents}</CS.ColorFont.GRAY2_S_NORMAL>
    </S.DeliveryContentsWrapper>
  );
};

export default DeliveryContents;
