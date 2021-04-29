import * as S from "./SliderStyles";

const SliderRightButton = ({
  rightButton,
  cardWidth,
  cardShown,
  setX,
  rightRemainingCards,
  setRightRemainingCards,
  setLeftRemainingCards,
}) => {
  let buttonFlag;

  const onClick = (direction) => {
    let moveNumber;

    rightRemainingCards < cardShown
      ? (moveNumber = rightRemainingCards)
      : (moveNumber = cardShown);

    setX((x) => x + cardWidth * direction * moveNumber);
    setRightRemainingCards((x) => x - moveNumber);
    setLeftRemainingCards((x) => x + moveNumber);
  };

  rightRemainingCards === 0 ? (buttonFlag = true) : (buttonFlag = false);

  return (
    <S.RightButtonWrapper onClick={() => onClick(-1)}>
      {rightButton}
    </S.RightButtonWrapper>
  );
};

export default SliderRightButton;
