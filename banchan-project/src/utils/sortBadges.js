import { Card } from "../Styles/commonStyles";

const sortBadge = (badge, index) => {
	switch (badge) {
		case "이벤트특가":
			return <Card.CardEventBadge key={index}>{badge}</Card.CardEventBadge>;
		case "론칭특가":
			return <Card.CardLaunchingBadge key={index}>{badge}</Card.CardLaunchingBadge>;
		default:
			return;
	}
};

export default sortBadge