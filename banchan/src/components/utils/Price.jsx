import styled from "styled-components";
import theme from "./theme";

const Price = ({ product }) => {
  const isOnSale = !!product.n_price;
  if (!isOnSale) {
    return <StyledFinalPriceSpan>{product.s_price}</StyledFinalPriceSpan>;
  }
  return (
    <StyledPriceWrapper>
      <StyledFinalPriceSpan>{product.n_price}</StyledFinalPriceSpan>
      <StyledOriginalPriceSpan>{product.s_price}</StyledOriginalPriceSpan>
    </StyledPriceWrapper>
  );
};

const StyledPriceWrapper = styled.div`
  display: flex;
  align-items: center;
`;

const StyledFinalPriceSpan = styled.span`
  font-size: ${theme.fontSizes.L};
  font-weight: bold;
  margin-right: 8px;
`;

const StyledOriginalPriceSpan = styled.span`
  font-size: ${theme.fontSizes.XS};
  text-decoration: line-through;
  color: ${theme.colors.lightGray};
`;

export default Price;
