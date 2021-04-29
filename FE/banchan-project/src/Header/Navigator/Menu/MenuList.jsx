import * as S from "../../HeaderStyles";

const MenuList = ({ categoryData, isMouseOver, currentCategoryId }) => {
  return (
    <ul>
      {currentCategoryId &&
        categoryData[Number(currentCategoryId)].category.map((menu, i) => {
          return <S.MenuList key={i}>{menu}</S.MenuList>;
        })}
    </ul>
  );
};

export default MenuList;
