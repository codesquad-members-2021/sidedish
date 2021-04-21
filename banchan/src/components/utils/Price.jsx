import styled from "styled-components";
import theme from "../utils/styles/theme.js";
import { CenterContainer } from "./styles/common.jsx";

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

const StyledPriceWrapper = styled(CenterContainer)`
  justify-content: start;
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
