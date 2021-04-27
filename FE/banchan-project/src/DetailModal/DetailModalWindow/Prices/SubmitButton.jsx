import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const SubmitButton = ({ count, stockOverFlag, handleModalFlag }) => {
  let disabledFlag = stockOverFlag;
  if (count === 0) {
    disabledFlag = true;
  }

  const onClick = () => {
    handleModalFlag();
  };
  return (
    <S.SubmitButton
      stockOverFlag={disabledFlag}
      disabled={disabledFlag}
      onClick={onClick}
    >
      {disabledFlag === false ? (
        <CS.ColorFont.WHITE_M_BOLD>주문하기</CS.ColorFont.WHITE_M_BOLD>
      ) : (
        <CS.ColorFont.GRAY4_M_BOLD>주문하기</CS.ColorFont.GRAY4_M_BOLD>
      )}
    </S.SubmitButton>
  );
};

export default SubmitButton;
