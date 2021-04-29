import * as S from "./SliderStyles";

const SliderScrollBox = ({ scrollBoxWidth, transition, cards, X }) => {
  return (
    <S.SliderScrollBox {...{ scrollBoxWidth, transition, X }}>
      {cards}
    </S.SliderScrollBox>
  );
};

export default SliderScrollBox;
