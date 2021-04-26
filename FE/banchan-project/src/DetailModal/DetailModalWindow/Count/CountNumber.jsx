import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const CountNumber = ({ props }) => {
  if (props.count > props.stock) {
    props.handleStockOver(true);
  } else {
    props.handleStockOver(false);
  }
  return (
    <S.CountNumber>
      <CS.ColorFont.GRAY1_S_NORMAL>{props.count}</CS.ColorFont.GRAY1_S_NORMAL>
    </S.CountNumber>
  );
};

export default CountNumber;
