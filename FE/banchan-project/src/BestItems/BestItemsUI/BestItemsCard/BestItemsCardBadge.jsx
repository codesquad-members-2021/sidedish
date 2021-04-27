import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
import sortBadge from "../../../utils/sortBadges";
const BestItemsCardBadge = ({ badge }) => {
  return (
    <S.BestItemsCardBadge>
      <CS.Badges.EventBadge>
        <CS.ColorFont.WHITE_XS_BOLD>{badge[0]}</CS.ColorFont.WHITE_XS_BOLD>
      </CS.Badges.EventBadge>
      {badge[1] && (
        <CS.Badges.LaunchingBadge>
          <CS.ColorFont.WHITE_XS_BOLD>{badge[1]}</CS.ColorFont.WHITE_XS_BOLD>
        </CS.Badges.LaunchingBadge>
      )}
    </S.BestItemsCardBadge>
  );
};

export default BestItemsCardBadge;

// import * as S from "../../BestItemsStyles";
// import sortBadge from "../../../utils/sortBadges";

// const BestItemsCardBadge = ({ detailBadge }) => {
//   return (
//     <S.BestItemsCardBadge>
//       {detailBadge &&
//         detailBadge.map((badge, index) => sortBadge(badge, index))}
//     </S.BestItemsCardBadge>
//   );
// };

// export default BestItemsCardBadge;
