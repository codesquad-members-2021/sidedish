import { useState } from "react";
import RecommendedItemsTitle from "./RecommendedItemsTitle";
import RecommendedItemsCard from "./RecommendedItemsCard/RecommendedItemsCard";
import RecommendedItemsPagination from "./RecommendedItemsPagination";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const RecommendedItems = () => {
  const [page, setPage] = useState(1);

  const images = new Array(10).fill(
    "https://www.straightnews.co.kr/news/photo/201912/61797_33389_525.jpg"
  );
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

      <RecommendedItemsCard images={images} />
    </S.RecommendedItems>
  );
};

export default RecommendedItems;
