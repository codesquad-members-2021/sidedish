import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DetailDescription = ({ detailDescription }) => {
  return (
    <S.DetailLineWrapper>
      <CS.ColorFont.GRAY3_M_NORMAL>
        {detailDescription}
      </CS.ColorFont.GRAY3_M_NORMAL>
    </S.DetailLineWrapper>
  );
};

export default DetailDescription;
