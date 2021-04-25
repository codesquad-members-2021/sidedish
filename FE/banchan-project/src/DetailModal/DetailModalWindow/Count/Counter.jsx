import { useState } from "react";
import CountNumber from "./CountNumber";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const Counter = () => {
  const [count, setCount] = useState(0);
  return (
    <CS.Box.FLEX_ROW_BOX>
      <S.CountNumberWrapper>
        <CountNumber count={count} />
      </S.CountNumberWrapper>

      <CS.Box.FLEX_COLUMN_BOX>
        <S.CountButtonWrapper onClick={() => setCount(count + 1)}>
          <CS.Button.UP_BUTTON />
        </S.CountButtonWrapper>

        <S.CountButtonWrapper onClick={() => setCount(count - 1)}>
          <CS.Button.DOWN_BUTTON />
        </S.CountButtonWrapper>
      </CS.Box.FLEX_COLUMN_BOX>
    </CS.Box.FLEX_ROW_BOX>
  );
};

export default Counter;
