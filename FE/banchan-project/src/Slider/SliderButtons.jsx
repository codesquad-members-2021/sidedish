import SliderLeftButton from "./SliderLeftButton";
import SliderRightButton from "./SliderRightButton";

const SliderButtons = ({
  cardWidth,
  cardShown,
  leftButton,
  rightButton,
  setX,
  rightRemainingCards,
  setRightRemainingCards,
  leftRemainingCards,
  setLeftRemainingCards,
}) => {
  return (
    <>
      <SliderLeftButton
        {...{
          leftButton,
          cardWidth,
          cardShown,
          setX,
          leftRemainingCards,
          setLeftRemainingCards,
          setRightRemainingCards,
        }}
      />
      <SliderRightButton
        {...{
          rightButton,
          cardWidth,
          cardShown,
          setX,
          rightRemainingCards,
          setRightRemainingCards,
          setLeftRemainingCards,
        }}
      />
    </>
  );
};

export default SliderButtons;
