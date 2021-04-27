import { Style } from "../SliderStyles";
import SliderCardList from "./SliderCardList";

const SliderCardWrapper = props => {
  return (
    <Style.SliderCardWrapper {...{}}>
      <SliderCardList></SliderCardList>
    </Style.SliderCardWrapper>
  );
};

export default SliderCardWrapper;
