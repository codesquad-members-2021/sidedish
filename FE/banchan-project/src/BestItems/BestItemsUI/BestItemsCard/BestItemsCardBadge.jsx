import * as S from "../../BestItemsStyles";
import sortBadge from "../../../utils/sortBadges";

const BestItemsCardBadge = ({ badge }) => {
  return (
    badge && (
      <S.BestItemsCardBadge>
        {badge.map((badge, index) => sortBadge(badge, index))}
      </S.BestItemsCardBadge>
    )
  );
};

export default BestItemsCardBadge;
