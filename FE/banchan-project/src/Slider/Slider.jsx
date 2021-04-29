import { useState } from "react";
import SliderScrollBox from "./SliderScrollBox";
import SliderButtons from "./SliderButtons";
import * as S from "./SliderStyles";

const Slider = ({
  sliderWidth,
  cardWidth,
  cardShown,
  totalCardCount,
  transition,
  cards,
  leftButton,
  rightButton,
  optionalFn,
}) => {
  const [X, setX] = useState(0);
  const [rightRemainingCards, setRightRemainingCards] = useState(
    totalCardCount - cardShown
  );
  const [leftRemainingCards, setLeftRemainingCards] = useState(0);
  const scrollBoxWidth = cardWidth * totalCardCount;

  return (
    <S.Slider sliderWidth={sliderWidth}>
      <SliderScrollBox {...{ scrollBoxWidth, transition, cards, X }} />
      <SliderButtons
        {...{
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
        }}
      />
    </S.Slider>
  );
};

export default Slider;
