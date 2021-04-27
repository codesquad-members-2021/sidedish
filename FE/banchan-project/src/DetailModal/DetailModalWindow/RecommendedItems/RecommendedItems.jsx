import { useState } from "react";
import RecommendedItemsTitle from "./RecommendedItemsTitle";
import RecommendedItemsCard from "./RecommendedItemsCard/RecommendedItemsCard";
import RecommendedItemsPagination from "./RecommendedItemsPagination";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const RecommendedItems = ({ recommended, handleClickCard }) => {
  const [page, setPage] = useState(1);

  // const managePageLimit = ({ page, lowerLimit = 0, upperLimit = 2 }) => {
  //   if (page < lowerLimit) return lowerLimit + 1;
  //   else if (page > upperLimit) return upperLimit - 1;
  //   else return page;
  // };

  return (
    <S.RecommendedItems>
      <S.RecommendedItemsHeaderWrapper>
        <RecommendedItemsTitle />
        <CS.Box.FLEX_ROW_BOX>
          <CS.Button.LEFT_BUTTON onClick={() => setPage(page - 1)} />
          <RecommendedItemsPagination page={page} />
          <CS.Button.RIGHT_BUTTON onClick={() => setPage(page + 1)} />
        </CS.Box.FLEX_ROW_BOX>
      </S.RecommendedItemsHeaderWrapper>

      <RecommendedItemsCard
        recommended={recommended}
        handleClickCard={handleClickCard}
      />
    </S.RecommendedItems>
  );
};

export default RecommendedItems;
