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

export { Button, CenterContainer, SectionTitle, CardList };
