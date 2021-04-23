import TotalPriceDescription from "./TotalPriceDescription";
import TotalPrice from "./TotalPrice";
import * as S from "../../DetailModalStyles";

const Submit = () => {
  return (
    <>
      <TotalPriceDescription />
      <TotalPrice />
      <S.SubmitButton>주문하기</S.SubmitButton>
    </>
  );
};

export default Submit;
