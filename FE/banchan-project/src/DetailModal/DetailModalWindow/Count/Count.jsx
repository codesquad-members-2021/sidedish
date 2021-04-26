import CountTitle from "./CountTitle";
import Counter from "./Counter";
import * as S from "../../DetailModalStyles";

const Count = (props) => {
  return (
    <S.CountWrapper>
      <CountTitle />
      <Counter props={props} />
    </S.CountWrapper>
  );
};

export default Count;
