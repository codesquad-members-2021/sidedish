import TotalPrice from "./TotalPrice";
import TotalPriceDescription from "./TotalPriceDescription";
import SubmitButton from "./SubmitButton";
import * as S from "../../DetailModalStyles";

const Prices = (props) => {
  return (
    <>
      <S.PricesWrapper>
        <TotalPriceDescription />
        <TotalPrice count={props.count} price={props.price} />
      </S.PricesWrapper>
      <SubmitButton
        count={props.count}
        stockOverFlag={props.stockOverFlag}
        handleModalFlag={props.handleModalFlag}
      />
    </>
  );
};

export default Prices;
