import { Style } from "../SliderStyles";
import * as CS from "../../Styles/commonStyles";

let isDisabledBtn;

const SliderRightButton = ({
  rightButton,
  totalWidth,
  setX,
  cardShown,
  rightRemainingCards,
  setLeftRemainingCards,
  setRightRemainingCards,
}) => {
  const onClick = direction => {
    if (rightRemainingCards < cardShown) {
      setX(x => x + totalWidth * direction * rightRemainingCards);
      setRightRemainingCards(x => x - rightRemainingCards);
      setLeftRemainingCards(x => x + rightRemainingCards);
    } else {
      //처음에 여기로 들어옴
      setX(x => x + totalWidth * direction * cardShown);
      setRightRemainingCards(x => x - cardShown);
      setLeftRemainingCards(x => x + cardShown);
    }
  };

  rightRemainingCards === 0 ? (isDisabledBtn = true) : (isDisabledBtn = false);

  return (
    <Style.RightButtonWrapper
      disabled={isDisabledBtn}
      onClick={() => onClick(-1)}
    >
      <CS.Button.RIGHT_BUTTON />
      {/* 추후 프롭스로 받은 버튼이 들어갈 예정입니다. */}
    </Style.RightButtonWrapper>
  );
};

export default SliderRightButton;
