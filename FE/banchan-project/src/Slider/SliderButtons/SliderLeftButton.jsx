import { Style } from "../SliderStyles";
import * as CS from "../../Styles/commonStyles";

let isDisabledBtn;

const SliderLeftButton = ({
  leftButton,
  totalWidth,
  setX,
  cardQuantity,
  cardShown,
  remainingCards,
  setRemainingCards,
}) => {
  const onClick = direction => {
    setX(x => x + totalWidth * direction * cardShown);
    setRemainingCards(x => x + cardShown);
  };

  remainingCards >= cardQuantity
    ? (isDisabledBtn = true)
    : (isDisabledBtn = false);

  return (
    <Style.LeftButtonWrapper
      disabled={isDisabledBtn}
      onClick={() => onClick(1)}
    >
      <CS.Button.LEFT_BUTTON />
    </Style.LeftButtonWrapper>
  );
};

export default SliderLeftButton;
