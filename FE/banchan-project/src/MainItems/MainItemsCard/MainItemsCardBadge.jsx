import sortBadge from "../../utils/sortBadges";
import * as CS from "../../Styles/commonStyles";

const MainItemsCardBadge = ({ badge }) => {
  return badge.length === 0 ? null : (
    <CS.Box.FLEX_ROW_BOX>
      {badge.map((badge, index) => sortBadge(badge, index))}
    </CS.Box.FLEX_ROW_BOX>
  );
};

export default MainItemsCardBadge;
