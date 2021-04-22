import * as S from "../../HeaderStyles";
// {currentCategory &&
//   menuData[currentCategory].map((menu, i) => {
//     return <S.MenuList key={i}>{menu}</S.MenuList>;
//   })}
const MenuList = ({ currentCategory = "든든한 메인요리" }) => {
  const menuData = {
    "든든한 메인요리": ["육류 요리", "해산물 요리"],
    "뜨끈한 국물요리": ["국/탕/찌개"],
    "정갈한 밑반찬": ["나물/무침", "조림/볶음", "절임/짱아찌"],
  };

  console.log(menuData[{ currentCategory }]);

  return <ul></ul>;
};

export default MenuList;
