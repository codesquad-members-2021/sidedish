import sortBadge from "../../utils/sortBadges";

const MainItemsCardBadge = ({ badge }) => {
  return badge === undefined
    ? null
    : badge.map((badge, index) => sortBadge(badge, index));
};

export default MainItemsCardBadge;
