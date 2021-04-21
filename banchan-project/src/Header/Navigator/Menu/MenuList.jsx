import * as S from "../../HeaderStyles";

const MenuList = () => {
  const menuData = {
    0: ["육류 요리", "해산물 요리"],
    1: ["국/탕/찌개"],
    2: ["나물/무침", "조림/볶음", "절임/짱아찌"],
  };

  return (
    <>
      {menuData[0].map((v, i) => (
        <S.MenuList key={i}>{v}</S.MenuList>
      ))}
    </>
  );
};

export default MenuList;
