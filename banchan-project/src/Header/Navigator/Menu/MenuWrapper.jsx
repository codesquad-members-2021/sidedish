import * as S from "../../HeaderStyles";
import MenuList from "./MenuList";
import { useState } from "react";

const MenuWrapper = ({ isMouseOver, currentCategory }) => {
  // const [menus, setMenus] = setState([]);
  //클릭된 카테고리에 맞는 메뉴 리스트
  return (
    <S.MenuWrapper>
      <MenuList {...{ isMouseOver, currentCategory }}></MenuList>
    </S.MenuWrapper>
  );
};

export default MenuWrapper;
