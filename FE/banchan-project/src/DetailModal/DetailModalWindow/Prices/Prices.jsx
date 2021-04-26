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
      <SubmitButton stockOverFlag={props.stockOverFlag} />
    </>
  );
};

export default Prices;
