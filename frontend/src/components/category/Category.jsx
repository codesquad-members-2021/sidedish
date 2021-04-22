import styled from "styled-components";
import CategoryList from "./CategoryList";

const CategoryDiv = styled.div`
  margin: 80px 0;
  width: 100%;
`;

const Button = styled.button`
  border: none;
  background-color: transparent;
  &:focus {
    outline: none;
  }
  cursor: pointer;
`;
const CategoryBtn = styled(Button)`
  width: 100%;
  height: 100px;
  background-color: #f5f5f7;
  font-size: 18px;
  font-weight: 700;
`;

const handleClick = () => {};
function Category() {
  return (
    <>
      <CategoryDiv>
        {/* fetch .map */}
        <CategoryList title={"모두가 좋아하는 든든한 메인요리"} />
        <CategoryBtn onClick={handleClick}>모든 카테고리 보기</CategoryBtn>
      </CategoryDiv>
    </>
  );
}

export default Category;
