import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const SubmitButton = ({ count, item_id, stockOverFlag, handleModalFlag }) => {
  let disabledFlag = stockOverFlag;
  if (count === 0) {
    disabledFlag = true;
  }

  const order = (item_id) => {
    fetch(
      `http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080/dish/${item_id}/order`,
      {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ order_amount: count }),
      }
    );
  };

  const onClick = (item_id) => {
    order(item_id);
    handleModalFlag();
  };
  return (
    <S.SubmitButton
      stockOverFlag={disabledFlag}
      disabled={disabledFlag}
      onClick={() => onClick(item_id)}
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
