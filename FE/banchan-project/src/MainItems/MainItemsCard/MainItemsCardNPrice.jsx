import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCardNPrice = ({ nPrice }) => {
  let n_Price;
  nPrice === undefined
    ? (n_Price = "할인 된 가격이 없습니다 !")
    : (n_Price = nPrice + "원");

  return (
    <S.MainItemsCardNPriceWrapper>
      <CS.ColorFont.GRAY4_XS_NORMAL>{n_Price}</CS.ColorFont.GRAY4_XS_NORMAL>
    </S.MainItemsCardNPriceWrapper>
  );
};

export default MainItemsCardNPrice;
