import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const SubmitButton = ({ stockOverFlag }) => {
  const onClick = () => {
    //추후 모달창 닫히는 이벤트 넣을 예정입니다.
    console.log("clicked!");
  };
  return (
    <S.SubmitButton
      stockOverFlag={stockOverFlag}
      disabled={stockOverFlag}
      onClick={onClick}
    >
      {stockOverFlag === false ? (
        <CS.ColorFont.WHITE_M_BOLD>주문하기</CS.ColorFont.WHITE_M_BOLD>
      ) : (
        <CS.ColorFont.GRAY4_M_BOLD>주문하기</CS.ColorFont.GRAY4_M_BOLD>
      )}
    </S.SubmitButton>
  );
};

export default SubmitButton;
