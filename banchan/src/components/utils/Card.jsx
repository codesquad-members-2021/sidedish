import styled from "styled-components";
import theme from "./theme";
import Price from "./Price";

const Card = ({ product, cardSize }) => {
  return (
    <StyledLi cardSize={cardSize}>
      <StyledImg cardSize={cardSize} src={product.image} alt="card-image" />
      <StyledTitle>{product.title}</StyledTitle>
      <StyledDescription>{product.description}</StyledDescription>
      <Price product={product} />
    </StyledLi>
  );
};

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
