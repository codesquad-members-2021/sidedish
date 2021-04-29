import * as S from "./SliderStyles";

const SliderLeftButton = ({
  leftButton,
  cardWidth,
  cardShown,
  setX,
  leftRemainingCards,
  setLeftRemainingCards,
  setRightRemainingCards,
  optionalFn,
}) => {
  let buttonFlag;
  let opacity;

  const onClick = direction => {
    let moveNumber;

    optionalFn && optionalFn(v => v - 1);
    leftRemainingCards < cardShown
      ? (moveNumber = leftRemainingCards)
      : (moveNumber = cardShown);

    setX(x => x + cardWidth * direction * moveNumber);
    setLeftRemainingCards(x => x - moveNumber);
    setRightRemainingCards(x => x + moveNumber);
  };

  if (leftRemainingCards === 0) {
    buttonFlag = true;
    opacity = 0.5;
  } else {
    buttonFlag = false;
    opacity = 1;
  }

  return (
    <S.LeftButtonWrapper
      disabled={buttonFlag}
      _opacity={opacity}
      onClick={() => {
        onClick(1);
      }}
    >
      {leftButton}
    </S.LeftButtonWrapper>
  );
};

export default SliderLeftButton;
