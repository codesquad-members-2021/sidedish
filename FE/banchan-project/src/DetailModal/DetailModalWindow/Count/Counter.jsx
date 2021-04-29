import CountNumber from "./CountNumber";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const Counter = ({ props }) => {
  return (
    <CS.Box.FLEX_ROW_BOX>
      <S.CountNumberWrapper>
        <CountNumber props={props} />
      </S.CountNumberWrapper>

      <CS.Box.FLEX_COLUMN_BOX>
        <S.CountButtonWrapper onClick={() => props.setCount(props.count + 1)}>
          <CS.Button.UP_BUTTON />
        </S.CountButtonWrapper>

        <S.CountButtonWrapper onClick={() => props.setCount(props.count - 1)}>
          <CS.Button.DOWN_BUTTON />
        </S.CountButtonWrapper>
      </CS.Box.FLEX_COLUMN_BOX>
    </CS.Box.FLEX_ROW_BOX>
  );
};

export default Counter;
