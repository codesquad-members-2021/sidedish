import CountTitle from "./CountTitle";
import Counter from "./Counter";
import * as S from "../../DetailModalStyles";

const Count = () => {
  return (
    <S.CountWrapper>
      <CountTitle />
      <Counter />
    </S.CountWrapper>
  );
};

export default Count;
