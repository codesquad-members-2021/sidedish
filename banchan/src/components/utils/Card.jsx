import styled from "styled-components";
import theme from "../utils/styles/theme.js";
import Price from "./Price";

const mockImage = "https://recipe1.ezmember.co.kr/cache/recipe/2020/09/23/5e308abb30b00ecb9c1b9b398db5b4451.jpg";

const Card = ({ product, cardSize, margin = 0 }) => {
  return (
    <StyledLi cardSize={cardSize} margin={margin}>
      <StyledImg cardSize={cardSize} src={mockImage} alt="card-image" />
      <StyledTitle>{product.title}</StyledTitle>
      <StyledDescription>{product.description}</StyledDescription>
      <Price product={product} />
    </StyledLi>
  );
};

const StyledLi = styled.li`
  width: ${(props) => props.cardSize};
  margin: 0 ${(props) => props.margin}px;
`;

const StyledImg = styled.img`
  border-radius: ${theme.borders.radius};
  margin-bottom: 16px;
  width: ${(props) => props.cardSize};
  height: ${(props) => props.cardSize};
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
