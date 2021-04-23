import * as S from "../../BestItemsStyles";
import BestItemsTabTitle from "../BestItemsTab/BestItemsTabTitle";

const BestItemsTab = ({ titleList }) => {
  return (
    <S.BestItemsTab>
      <BestItemsTabTitle {...{ titleList }}></BestItemsTabTitle>
    </S.BestItemsTab>
  );
};

export default BestItemsTab;
