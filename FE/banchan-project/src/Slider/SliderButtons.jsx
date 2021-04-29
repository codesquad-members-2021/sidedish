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
  optionalFn,
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
          optionalFn,
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
          optionalFn,
        }}
      />
    </>
  );
};

export default SliderButtons;
