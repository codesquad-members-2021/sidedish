import { Card } from "../../Styles/commonStyles";

const MainItemsCardNPrice = ({ nPrice }) => {
  let n_Price;
  nPrice === undefined
    ? (n_Price = "할인 된 가격이 없습니다 !")
    : (n_Price = nPrice + "원");
  return (
    <Card.CardNPrice fontSize={14} lineHeight={20}>
      {n_Price}
    </Card.CardNPrice>
  );
};

export default MainItemsCardNPrice;
