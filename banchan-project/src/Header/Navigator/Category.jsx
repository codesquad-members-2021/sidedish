import * as S from "../HeaderStyles";
import MenuWrapper from "../Navigator/Menu/MenuWrapper";
const Category = () => {
  const categoryList = ["든든한 메인요리", "뜨끈한 국물요리", "정갈한 밑반찬"];

  return (
    <S.Category>
      {categoryList.map((category, idx) => {
        return <li key={idx}>{category}</li>;
      })}
      <MenuWrapper></MenuWrapper>
    </S.Category>
  );
};

export default Category;
