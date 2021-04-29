import { useState } from "react";
import RecommendedItemsTitle from "./RecommendedItemsTitle";
import RecommendedItemsCard from "./RecommendedItemsCard/RecommendedItemsCard";
import RecommendedItemsPagination from "./RecommendedItemsPagination";
import * as S from "../../DetailModalStyles";

const RecommendedItems = ({ recommended, handleClickCard }) => {
  const [page, setPage] = useState(1);

  return (
    <S.RecommendedItems>
      <S.RecommendedItemsHeaderWrapper>
        <RecommendedItemsTitle />
        <RecommendedItemsPagination page={page} />
      </S.RecommendedItemsHeaderWrapper>

      <RecommendedItemsCard
        recommended={recommended}
        handleClickCard={handleClickCard}
        optionalFn={setPage}
      />
    </S.RecommendedItems>
  );
};

export default RecommendedItems;
