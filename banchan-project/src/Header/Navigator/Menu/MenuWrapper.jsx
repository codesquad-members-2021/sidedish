import * as S from "../../HeaderStyles";
import MenuList from "./MenuList";
import { useState } from "react";
const MenuWrapper = () => {
  // const [menus, setMenus] = setState([]);
  //클릭된 카테고리에 맞는 메뉴 리스트
  return (
    <S.MenuWrapper>
      <MenuList />
    </S.MenuWrapper>
  );
};

export default MenuWrapper;
