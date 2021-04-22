import * as S from "./BestItemsStyles";
import BestItemsTitle from "./BestItemsTitle";
import BestItemsTab from "./BestItemsUI/BestItemsTab/BestItemsTab";
import BestItemsCardWrapper from "./BestItemsUI/BestItemsCardWrapper";

const BestItems = () => {
  return (
    <S.BestItems>
      <BestItemsTitle></BestItemsTitle>
      <BestItemsTab></BestItemsTab>
      <BestItemsCardWrapper></BestItemsCardWrapper>
    </S.BestItems>
  );
};

export default BestItems;
