import CardImage from "./MainItemsCardImage";
import CardTitle from "./MainItemsCardTitle";
import CardDescription from "./MainItemsCardDescription";
import CardNPrice from "./MainItemsCardNPrice";
import CardSPrice from "./MainItemsCardSPrice";
import CardBadge from "./MainItemsCardBadge";
import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCard = ({ item, handleClickCard }) => {
  return (
    <CS.Box.FLEX_COLUMN_BOX>
      <CardImage
        image={item.image}
        alt={item.title}
        detailUrl={item.detail_url}
        delivery_type={item.delivery_type}
        handleClickCard={handleClickCard}
      />
      <CardTitle title={item.title} />
      <CardDescription description={item.description} />
      <S.CategoryItemsPriceWrapper>
        <CardSPrice sPrice={item.s_price} />
        {item.s_price === item.n_price ? null : (
          <CardNPrice nPrice={item.n_price} />
        )}
      </S.CategoryItemsPriceWrapper>
      <CardBadge badge={item.badge} />
    </CS.Box.FLEX_COLUMN_BOX>
  );
};

export default MainItemsCard;
