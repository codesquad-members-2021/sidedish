import * as S from "./SliderStyles";

const SliderLeftButton = ({
  leftButton,
  cardWidth,
  cardShown,
  setX,
  leftRemainingCards,
  setLeftRemainingCards,
  setRightRemainingCards,
}) => {
  let buttonFlag;

  const onClick = (direction) => {
    let moveNumber;

    leftRemainingCards < cardShown
      ? (moveNumber = leftRemainingCards)
      : (moveNumber = cardShown);

    setX((x) => x + cardWidth * direction * moveNumber);
    setLeftRemainingCards((x) => x - moveNumber);
    setRightRemainingCards((x) => x + moveNumber);
  };

  leftRemainingCards === 0 ? (buttonFlag = true) : (buttonFlag = false);

  return (
    <S.LeftButtonWrapper onClick={() => onClick(1)}>
      {leftButton}
    </S.LeftButtonWrapper>
  );
};

export default SliderLeftButton;
