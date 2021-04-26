import TotalPrice from "./TotalPrice";
import TotalPriceDescription from "./TotalPriceDescription";
import SubmitButton from "./SubmitButton";
import * as S from "../../DetailModalStyles";

const Prices = () => {
  return (
    <>
      <S.PricesWrapper>
        <TotalPriceDescription />
        <TotalPrice price={"5,200원"} />
      </S.PricesWrapper>
      <SubmitButton />
    </>
  );
};

export default Prices;
