import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const SubmitButton = ({ count, stockOverFlag, handleModalFlag }) => {
  let disabledFlag = stockOverFlag;
  if (count === 0) {
    disabledFlag = true;
  }

  const order = () => {
    fetch(
      "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080/dish/1/order",
      {
        method: "PUT",
        header: { "Content-Type": "application/json" },
        body: { order_amount: 1 },
      }
    ).then((res) => console.log(res.json()));
  };

  const onClick = () => {
    // order();
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
