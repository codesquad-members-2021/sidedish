import * as S from "./SliderStyles";

const SliderScrollBox = ({ scrollBoxWidth, transition, cards, X }) => {
  return (
    <S.SliderViewer>
      <S.SliderScrollBox {...{ scrollBoxWidth, transition, X }}>
        {cards}
      </S.SliderScrollBox>
    </S.SliderViewer>
  );
};

export default SliderScrollBox;
