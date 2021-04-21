import * as S from "../../BestItemsStyles";
import BestItemsTabBox from "../BestItemsTab/BestItemsTabBox";
import BestItemsTabTitle from "../BestItemsTab/BestItemsTabTitle";

const BestItemsTab = () => {
  return (
    <S.BestItemsTab>
      <BestItemsTabTitle></BestItemsTabTitle>
      <BestItemsTabBox></BestItemsTabBox>
    </S.BestItemsTab>
  );
};

export default BestItemsTab;
