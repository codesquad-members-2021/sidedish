import * as S from "../../HeaderStyles";
import MenuList from "./MenuList";

const MenuWrapper = ({
  categoryData,
  isMouseOver,
  currentCategoryId,
  display,
}) => {
  return (
    <S.MenuWrapper _display={display}>
      <MenuList
        {...{ categoryData, isMouseOver, currentCategoryId }}
      ></MenuList>
    </S.MenuWrapper>
  );
};

export default MenuWrapper;
