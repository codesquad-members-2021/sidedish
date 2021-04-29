import { Style } from "../SliderStyles";
import SliderCardList from "./SliderCardList";

const SliderCardWrapper = ({ card, X }) => {
  return (
    <Style.SliderCardWrapper>
      <SliderCardList {...{ card, X }}></SliderCardList>
    </Style.SliderCardWrapper>
  );
};

export default SliderCardWrapper;
