import styled from "styled-components";
import CategoryList from "./CategoryList";
import { useState } from "react";

const CategoryBlock = styled.div`
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

const handleClick = (setToggle) => {
  setToggle((t) => !t);
};

// 질문 훅의 위치는 어디에?
function Category() {
  const [toggle, setToggle] = useState(false);
  const CategoryLists = toggle ? (
    <>
      <CategoryList title={"모두가 좋아하는 든든한 메인요리"} url={"main"} />{" "}
      <CategoryList title={"정성이 담긴 뜨끈한 국물요리"} url={"soup"} />
      <CategoryList title={"식탁을 풍성하게 하는 정갈한 밑반찬"} url={"sided"} />
    </>
  ) : (
    <CategoryList title={"식탁을 풍성하게 하는 정갈한 밑반찬"} url={"main"} />
  );
  return (
    <>
      <CategoryBlock>
        {CategoryLists}
        <CategoryBtn onClick={() => handleClick(setToggle)}>
          {toggle ? "카테고리 접기" : "모든 카테고리 보기"}
        </CategoryBtn>
      </CategoryBlock>
    </>
  );
}

export default Category;
