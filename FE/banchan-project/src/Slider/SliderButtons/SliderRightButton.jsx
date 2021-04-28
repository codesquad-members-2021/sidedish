import { Style } from "../SliderStyles";
import * as CS from "../../Styles/commonStyles";

let isDisabledBtn;

const SliderRightButton = ({
  rightButton,
  totalWidth,
  setX,
  cardShown,
  remainingCards,
  setRemainingCards,
}) => {
  const onClick = direction => {
    setX(x => x + totalWidth * direction * cardShown);
    setRemainingCards(x => x - cardShown);
  };

  remainingCards < cardShown ? (isDisabledBtn = true) : (isDisabledBtn = false);

  console.log(remainingCards);
  console.log(isDisabledBtn);
  return (
    <Style.RightButtonWrapper
      disabled={isDisabledBtn}
      onClick={() => onClick(-1)}
    >
      <CS.Button.RIGHT_BUTTON />
    </Style.RightButtonWrapper>
  );
};

export default SliderRightButton;
