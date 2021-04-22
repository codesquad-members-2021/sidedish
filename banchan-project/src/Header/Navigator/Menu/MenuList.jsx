import * as S from "../../HeaderStyles";
// {currentCategoryId &&
//   menuData[currentCategoryId].map((menu, i) => {
//     return <S.MenuList key={i}>{menu}</S.MenuList>;
//   })}

const MenuList = ({ categoryData, isMouseOver, currentCategoryId }) => {
  const data = categoryData;
  const menuData = {
    0: ["육류 요리", "해산물 요리"],
    1: ["국/탕/찌개"],
    2: ["나물/무침", "조림/볶음", "절임/짱아찌"],
  };

  console.log(menuData[Number(currentCategoryId)]);
  console.log({ currentCategoryId });

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
