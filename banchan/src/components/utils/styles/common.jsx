import styled from "styled-components";
import theme from "./theme.js";

const Button = styled.button`
  all: unset;
  border-radius: ${theme.borders.radius};
`;

const CenterContainer = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`;

const SectionTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.darkGray};
  margin: 28px 0;
`;

const CardList = styled.ul`
  display: flex;
  justify-content: center;
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

const LabelList = styled(CenterContainer)`
  justify-content: start;
`;

const ProductBuyInfoTitle = styled.div`
  min-width: 60px;
  margin-right: 16px;
  color: ${(props) => props.theme.colors.gray};
`;

const ProductTotalTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.colors.darkGray};
  margin-right: 24px;
`;

export {
  Button,
  CenterContainer,
  SectionTitle,
  CardList,
  StyledTitle,
  StyledDescription,
  LabelList,
  ProductBuyInfoTitle,
  ProductTotalTitle,
};
