import { useState, useEffect } from "react";
import * as CS from "../Styles/commonStyles";
import { Style } from "./SliderStyles";
import SliderCardWrapper from "./SliderCard/SliderCardWrapper";
import SliderButtons from "./SliderButtons/SliderButtons";

const customStyle = {
  cardWidth: 308,
  cardRightMargin: 16,
  cardShown: 4,
  cardQuantity: 9,
  transitionDefault: "all .5s",
};

const Slider = ({ card, leftButton, rightButton }) => {
  const cardQuantity = customStyle.cardQuantity;
  const cardShown = customStyle.cardShown;
  const totalWidth = customStyle.cardWidth + customStyle.cardRightMargin;
  const [X, setX] = useState(0); //324 * n
  const [remainingCards, setRemainingCards] = useState(cardQuantity);

  return (
    <Style.Slider>
      <SliderCardWrapper {...{ card, X }}></SliderCardWrapper>
      <SliderButtons
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
      ></SliderButtons>
    </Style.Slider>
  );
};

export default Slider;
