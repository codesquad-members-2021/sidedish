import { Style } from "../SliderStyles";

import SliderCard from "./SliderCard";
const SliderCardList = ({ card, X }) => {
  const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  return (
    <Style.SliderCardList {...{ X }}>
      {arr.map((x, idx) => (
        <SliderCard key={idx}>{x}</SliderCard>
      ))}
    </Style.SliderCardList>
  );
};

export default SliderCardList;
