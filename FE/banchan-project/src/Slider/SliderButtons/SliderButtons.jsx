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
  remainingCards,
  setRemainingCards,
}) => {
  //버튼 가져와서 보여줘야함
  return (
    <Style.ButtonsWrapper>
      <SliderLeftButton
        {...{
          leftButton,
          rightButton,
          totalWidth,
          setX,
          cardQuantity,
          cardShown,
          remainingCards,
          setRemainingCards,
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
          remainingCards,
          setRemainingCards,
        }}
      >
        <rightButton />
      </SliderRightButton>
    </Style.ButtonsWrapper>
  );
};

export default SliderButtons;
