import * as S from "../../HeaderStyles";

const MenuList = ({ categoryData, isMouseOver, currentCategoryId }) => {
  const data = categoryData; //하드코딩 수정필요
  const menuData = {
    0: ["육류 요리", "해산물 요리"],
    1: ["국/탕/찌개"],
    2: ["나물/무침", "조림/볶음", "절임/짱아찌"],
  };

  return (
    <ul>
      {currentCategoryId ? (
        menuData[Number(currentCategoryId)].map((menu, i) => {
          return <S.MenuList key={i}>{menu}</S.MenuList>;
        })
      ) : (
        <S.MenuList></S.MenuList>
      )}
    </ul>
  );
};

export default MenuList;
