import { Style } from "../SliderStyles";
import SliderLeftButton from "./SliderLeftButton";
import SliderRightButton from "./SliderRightButton";

const SliderButtons = ({
  leftButton,
  rightButton,
  totalWidth,
  setX,
  cardQuantity,
  cardShown,
  rightRemainingCards,
  setRightRemainingCards,
  leftRemainingCards,
  setLeftRemainingCards,
}) => {
  //버튼 가져와서 보여줘야함
  return (
    <Style.ButtonsWrapper>
      <SliderLeftButton
        {...{
          leftButton,
          totalWidth,
          setX,
          cardQuantity,
          cardShown,
          leftRemainingCards,
          setLeftRemainingCards,
          setRightRemainingCards,
        }}
      >
        <leftButton />
      </SliderLeftButton>
      <SliderRightButton
        {...{
          rightButton,
          totalWidth,
          setX,
          cardShown,
          rightRemainingCards,
          setLeftRemainingCards,
          setRightRemainingCards,
        }}
      >
        <rightButton />
      </SliderRightButton>
    </Style.ButtonsWrapper>
  );
};

export default SliderButtons;
