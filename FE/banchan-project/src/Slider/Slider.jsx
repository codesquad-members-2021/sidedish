import SliderCardWrapper from "./SliderCard/SliderCardWrapper";
import SliderButtons from "./SliderButtons/SliderButtons";

// const customStyle = {
//   cardWidth: "200px",
//   cardCount: "4",
//   transitionDefault: "all .5s",
//   buttonWidth: "3px",
// };

const Slider = ({ card, leftButton, rightButton }) => {
  return (
    <>
      <SliderCardWrapper {...{ card }}></SliderCardWrapper>
      <SliderButtons {...{ leftButton, rightButton }}></SliderButtons>
    </>
  );
};

export default Slider;
