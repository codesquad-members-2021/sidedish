import sortBadge from "../../../utils/sortBadges";

const DetailBadge = ({ detailBadge }) => {
  return detailBadge.length === 0
    ? null
    : detailBadge.map((badge, index) => sortBadge(badge, index));
};

export default DetailBadge;
