import styled from 'styled-components';
import theme from './constant';

const Card = ({ product, cardSize }) => {
  return (
    <CardContainer cardSize={cardSize}>
      <img src={product.image} alt="card-image" />
      <CardInfoContainer>
        <div className="title">
          <span>{product.title}</span>
        </div>
        <div className="description">
          <span>{product.description}</span>
        </div>
        <Price product={product} />
      </CardInfoContainer>
    </CardContainer>
  );
};

const Price = ({ product }) => {
  const isOnSale = !!product.n_price;
  if (!isOnSale) {
    return <FinalPriceSpan>{product.s_price}</FinalPriceSpan>;
  }
  return (
    <div className="price">
      <FinalPriceSpan>{product.n_price}</FinalPriceSpan>
      <OriginalPriceSpan>{product.s_price}</OriginalPriceSpan>
    </div>
  );
};

// ============================= ● Styled components ● =============================

const CardContainer = styled.li`
  width: ${(props) => (props.cardSize === 'medium' ? '308px' : '384px')};

  img {
    border-radius: ${theme.borders.radius};
    margin-bottom: 16px;
    width: ${(props) => (props.cardSize === 'medium' ? '308px' : '384px')};
  }
`;

const CardInfoContainer = styled.div`
  .title {
    font-size: ${theme.fontSizes.S};
    color: ${theme.colors.darkGray};
  }

  .description {
    font-size: ${theme.fontSizes.XS};
    color: ${theme.colors.gray};
    margin: 8px 0px;
  }

  .price {
    display: flex;
    align-items: center;
  }
`;

const FinalPriceSpan = styled.span`
  font-size: ${theme.fontSizes.L};
  font-weight: bold;
  margin-right: 8px;
`;

const OriginalPriceSpan = styled.span`
  font-size: ${theme.fontSizes.XS};
  text-decoration: line-through;
  color: ${theme.colors.lightGray};
`;

export default Card;
