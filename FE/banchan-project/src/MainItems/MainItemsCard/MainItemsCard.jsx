import MainItemsCardImage from "./MainItemsCardImage";
import MainItemsCardTitle from "./MainItemsCardTitle";
import MainItemsCardDescription from "./MainItemsCardDescription";
import MainItemsCardNPrice from "./MainItemsCardNPrice";
import MainItemsCardSPrice from "./MainItemsCardSPrice";
import MainItemsCardBadge from "./MainItemsCardBadge";
import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCard = ({ items }) => {
  return (
    <CS.Box.FLEX_COLUMN_BOX>
      <MainItemsCardImage image={items.image} alt={items.alt} />
      <MainItemsCardTitle title={items.title} />
      <MainItemsCardDescription description={items.description} />
      <S.MainItemsPriceWrapper>
        <MainItemsCardSPrice sPrice={items.s_price} />
        <MainItemsCardNPrice nPrice={items.n_price} />
      </S.MainItemsPriceWrapper>
      <MainItemsCardBadge badge={items.badge} />
    </CS.Box.FLEX_COLUMN_BOX>
  );
};

export default MainItemsCard;
