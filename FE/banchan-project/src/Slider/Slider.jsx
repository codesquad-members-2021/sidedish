import { useState, useEffect } from "react";
import * as CS from "../Styles/commonStyles";
import { Style } from "./SliderStyles";
import SliderCardWrapper from "./SliderCard/SliderCardWrapper";
import SliderButtons from "./SliderButtons/SliderButtons";

const customStyle = {
  // 카드의 총 width를 받아야 어디서든 사용하기 좋을 듯 .. ?
  // Ex. cardWidth : 324 // (카드의 마진 , 패딩을 포함한 width를 넣어주세요 -> 옵션 설명)
  cardWidth: 308,
  cardRightMargin: 16,
  cardShown: 4,
  card: 9,
  transitionDefault: "all .5s",
  // 그냥 transition 으로 변수명 가도 좋을듯 !
};

const Slider = ({ card, leftButton, rightButton }) => {
  const cardQuantity = customStyle.card - customStyle.cardShown; //5
  const cardShown = customStyle.cardShown; //4
  const totalWidth = customStyle.cardWidth + customStyle.cardRightMargin;
  const [X, setX] = useState(0); //324 * n
  const [rightRemainingCards, setRightRemainingCards] = useState(cardQuantity); //5
  const [leftRemainingCards, setLeftRemainingCards] = useState(0); //5

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
          rightRemainingCards,
          setRightRemainingCards,
          leftRemainingCards,
          setLeftRemainingCards,
        }}
      ></SliderButtons>
    </Style.Slider>
  );
};

export default Slider;
