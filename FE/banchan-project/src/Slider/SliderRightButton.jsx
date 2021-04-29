import * as S from "./SliderStyles";

const SliderRightButton = ({
  rightButton,
  cardWidth,
  cardShown,
  setX,
  rightRemainingCards,
  setRightRemainingCards,
  setLeftRemainingCards,
  optionalFn,
}) => {
  let buttonFlag;
  let opacity;

  const onClick = direction => {
    let moveNumber;

    optionalFn && optionalFn(v => v + 1);
    rightRemainingCards < cardShown
      ? (moveNumber = rightRemainingCards)
      : (moveNumber = cardShown);

    setX(x => x + cardWidth * direction * moveNumber);
    setRightRemainingCards(x => x - moveNumber);
    setLeftRemainingCards(x => x + moveNumber);
  };

  if (rightRemainingCards === 0) {
    buttonFlag = true;
    opacity = 0.5;
  } else {
    buttonFlag = false;
    opacity = 1;
  }

  return (
    <S.RightButtonWrapper
      disabled={buttonFlag}
      _opacity={opacity}
      onClick={() => {
        onClick(-1);
      }}
    >
      {rightButton}
    </S.RightButtonWrapper>
  );
};

export default SliderRightButton;
