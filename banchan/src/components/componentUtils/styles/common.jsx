import styled from "styled-components";

const Button = styled.button`
  all: unset;
  border-radius: ${({ theme }) => theme.borders.radius};
`;

const CenterContainer = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`;

const SectionTitle = styled.div`
  font-size: ${({ theme }) => theme.fontSizes.XL};
  font-weight: bold;
  color: ${({ theme }) => theme.darkGray};
  margin: 28px 0;
`;

const CardList = styled.ul`
  display: flex;
  justify-content: center;
`;

const StyledTitle = styled.div`
  font-size: ${({ theme }) => theme.fontSizes.S};
  color: ${({ theme }) => theme.colors.darkGray};
`;

const StyledDescription = styled.div`
  font-size: ${({ theme }) => theme.fontSizes.XS};
  color: ${({ theme }) => theme.colors.gray};
  margin: 8px 0px;
`;

const LabelList = styled(CenterContainer)`
  justify-content: start;
`;

const ProductBuyInfoTitle = styled.div`
  min-width: 60px;
  margin-right: 16px;
  color: ${({ theme }) => theme.colors.gray};
`;

const ProductTotalTitle = styled.div`
  font-size: ${({ theme }) => theme.fontSizes.XL};
  font-weight: bold;
  color: ${({ theme }) => theme.colors.darkGray};
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
