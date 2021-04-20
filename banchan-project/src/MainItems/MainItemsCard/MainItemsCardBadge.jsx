import { Card } from "../../Styles/commonStyles";

const MainItemsCardBadge = ({ badge }) => {
  let badgeArr;
  badge === undefined ? (badgeArr = []) : (badgeArr = badge);

  const SortBadge = (badge) => {
    switch (badge) {
      case "이벤트특가":
        return <Card.CardEventBadge>{badge}</Card.CardEventBadge>;
      case "론칭특가":
        return <Card.CardLaunchingBadge>{badge}</Card.CardLaunchingBadge>;
    }
  };

  return badgeArr.map((badge, index) => (
    <div key={index}>{SortBadge(badge)}</div>
  ));
};

export default MainItemsCardBadge;
