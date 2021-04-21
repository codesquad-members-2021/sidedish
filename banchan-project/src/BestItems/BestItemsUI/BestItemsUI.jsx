import * as S from "../BestItemsStyles";
import BestItemsCard from "./BestItemsCard/BestItemsCard";
import BestItemsTab from "./BestItemsTab/BestItemsTab";

const BestItemsUI = () => {
  return (
    <S.BestItemsUI>
      <BestItemsTab></BestItemsTab>
      <BestItemsCard></BestItemsCard>
    </S.BestItemsUI>
  );
};

export default BestItemsUI;
