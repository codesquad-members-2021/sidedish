import * as CS from "../Styles/commonStyles";

const sortBadge = (badge, index) => {
  const badgeText = (
    <CS.ColorFont.WHITE_XS_BOLD>{badge}</CS.ColorFont.WHITE_XS_BOLD>
  );
  switch (badge) {
    case "이벤트특가":
      return (
        <CS.Badges.EventBadge key={index}>{badgeText}</CS.Badges.EventBadge>
      );
    case "론칭특가":
      return (
        <CS.Badges.LaunchingBadge key={index}>
          {badgeText}
        </CS.Badges.LaunchingBadge>
      );
    default:
      return;
  }
};

export default sortBadge;
