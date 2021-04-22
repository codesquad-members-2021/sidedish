import * as S from "../HeaderStyles";
import MenuWrapper from "./Menu/MenuWrapper";
const Category = ({
  isMouseOver,
  handleMouseEnter,
  handleMouseLeave,
  currentCategory,
}) => {
  const categoryList = ["든든한 메인요리", "뜨끈한 국물요리", "정갈한 밑반찬"];

  return (
    <>
      <S.Category>
        {categoryList.map((category, idx) => {
          return (
            <S.CategoryList
              key={idx}
              id={idx}
              onMouseEnter={handleMouseEnter}
              onMouseLeave={handleMouseLeave}
            >
              {category}
              <MenuWrapper {...{ isMouseOver, currentCategory }}></MenuWrapper>
            </S.CategoryList>
          );
        })}
      </S.Category>
    </>
  );
};

export default Category;
