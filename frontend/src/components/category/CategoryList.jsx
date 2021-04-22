import styled from "styled-components";
import { Title } from "../Theme";
import CategorySlide from "./CategorySlide";
const TitleWrapper = styled.div`
  margin: 0 40px;
`;

function CategoryList({ title }) {
  return (
    <>
      <TitleWrapper>
        <Title>{title}</Title>
      </TitleWrapper>
      <CategorySlide />
    </>
  );
}

export default CategoryList;
