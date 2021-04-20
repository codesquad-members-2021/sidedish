import styled from 'styled-components';
import theme from './constant';
import Price from './Price';

const Card = ({ product, cardSize }) => {
  return (
    <StyledLi cardSize={cardSize}>
      <StyledImg cardSize={cardSize} src={product.image} alt="card-image" />
      <StyledTitle>
        <span>{product.title}</span>
      </StyledTitle>
      <StyledDescription>
        <span>{product.description}</span>
      </StyledDescription>
      <Price product={product} />
    </StyledLi>
  );
};

// ============================= ● Styled components ● =============================

const StyledLi = styled.li`
  width: ${(props) => props.cardSize};
`;

const StyledImg = styled.img`
  border-radius: ${theme.borders.radius};
  margin-bottom: 16px;
  width: ${(props) => props.cardSize};
`;

const StyledTitle = styled.div`
  font-size: ${theme.fontSizes.S};
  color: ${theme.colors.darkGray};
`;

const StyledDescription = styled.div`
  font-size: ${theme.fontSizes.XS};
  color: ${theme.colors.gray};
  margin: 8px 0px;
`;

export default Card;
