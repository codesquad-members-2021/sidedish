import { Style } from "../SliderStyles";
import * as CS from "../../Styles/commonStyles";

let isDisabledBtn;

const SliderLeftButton = ({
  leftButton,
  totalWidth,
  setX,
  cardQuantity,
  cardShown,
  leftRemainingCards,
  setLeftRemainingCards,
  setRightRemainingCards,
}) => {
  const onClick = direction => {
    if (leftRemainingCards < cardShown) {
      setX(x => x + totalWidth * direction * leftRemainingCards);
      setLeftRemainingCards(x => x - leftRemainingCards);
      setRightRemainingCards(x => x + leftRemainingCards);
    } else {
      //cardshown= 4 remain=5
      setX(x => x + totalWidth * direction * cardShown);
      setLeftRemainingCards(x => x - cardShown);
      setRightRemainingCards(x => x + cardShown);
    }
  };

  leftRemainingCards === 0 ? (isDisabledBtn = true) : (isDisabledBtn = false);

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
