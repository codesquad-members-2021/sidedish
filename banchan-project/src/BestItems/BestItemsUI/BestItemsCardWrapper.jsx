import * as S from "../BestItemsStyles";
import BestItemsCard from "./BestItemsCard/BestItemsCard";

const BestItemsCardWrapper = () => {
  return (
    <S.BestItemsCardWrapper>
      <BestItemsCard></BestItemsCard>
      <BestItemsCard></BestItemsCard>
      <BestItemsCard></BestItemsCard>
    </S.BestItemsCardWrapper>
  );
};

export default BestItemsCardWrapper;
