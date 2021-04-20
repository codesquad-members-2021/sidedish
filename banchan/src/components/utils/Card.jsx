import styled from 'styled-components';
import theme from './constant';

const Card = ({ product, cardSize }) => {
  return (
    <StyledLi cardSize={cardSize}>
      <StyledImg cardSize={cardSize} src={product.image} alt="card-image" />
      <StyledCardInfoContainer>
        <StyledTitle>
          <span>{product.title}</span>
        </StyledTitle>
        <StyledDescription>
          <span>{product.description}</span>
        </StyledDescription>
        <Price product={product} />
      </StyledCardInfoContainer>
    </StyledLi>
  );
};

const Price = ({ product }) => {
  const isOnSale = !!product.n_price;
  if (!isOnSale) {
    return <StyledFinalPriceSpan>{product.s_price}</StyledFinalPriceSpan>;
  }
  return (
    <StyledPriceWrapper className="price">
      <StyledFinalPriceSpan>{product.n_price}</StyledFinalPriceSpan>
      <StyledOriginalPriceSpan>{product.s_price}</StyledOriginalPriceSpan>
    </StyledPriceWrapper>
  );
};

// ============================= ● Styled components ● =============================

const StyledLi = styled.li`
  width: ${(props) => (props.cardSize === 'medium' ? '308px' : '384px')};
`;

const StyledImg = styled.img`
  border-radius: ${theme.borders.radius};
  margin-bottom: 16px;
  width: ${(props) => (props.cardSize === 'medium' ? '308px' : '384px')};
`;

const StyledCardInfoContainer = styled.div``;

const StyledTitle = styled.div`
  font-size: ${theme.fontSizes.S};
  color: ${theme.colors.darkGray};
`;

const StyledDescription = styled.div`
  font-size: ${theme.fontSizes.XS};
  color: ${theme.colors.gray};
  margin: 8px 0px;
`;

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

export default Card;
