import * as S from "./BestItemsStyles";
import BestItemsTitle from "./BestItemsTitle";
import BestItemsUI from "./BestItemsUI/BestItemsUI";

const BestItems = () => {
  return (
    <S.BestItems>
      <BestItemsTitle></BestItemsTitle>
      <BestItemsUI></BestItemsUI>
    </S.BestItems>
  );
};

export default BestItems;
