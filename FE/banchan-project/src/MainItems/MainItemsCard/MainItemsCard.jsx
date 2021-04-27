import MainItemsCardImage from "./MainItemsCardImage";
import MainItemsCardTitle from "./MainItemsCardTitle";
import MainItemsCardDescription from "./MainItemsCardDescription";
import MainItemsCardNPrice from "./MainItemsCardNPrice";
import MainItemsCardSPrice from "./MainItemsCardSPrice";
import MainItemsCardBadge from "./MainItemsCardBadge";
import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCard = ({ item, handleClickCard }) => {
  return (
    <CS.Box.FLEX_COLUMN_BOX>
      <MainItemsCardImage
        image={item.image}
        alt={item.title}
        detailUrl={item.detail_url}
        delivery_type={item.delivery_type}
        handleClickCard={handleClickCard}
      />
      <MainItemsCardTitle title={item.title} />
      <MainItemsCardDescription description={item.description} />
      <S.MainItemsPriceWrapper>
        <MainItemsCardSPrice sPrice={item.s_price} />
        {item.s_price === item.n_price ? null : (
          <MainItemsCardNPrice nPrice={item.n_price} />
        )}
      </S.MainItemsPriceWrapper>
      <MainItemsCardBadge badge={item.badge} />
    </CS.Box.FLEX_COLUMN_BOX>
  );
};

export default MainItemsCard;
