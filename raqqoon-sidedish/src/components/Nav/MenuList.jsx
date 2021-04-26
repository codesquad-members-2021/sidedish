import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';
import Menu from 'components/nav/Menu';

const MenuList = () => {
  const navMenus = [
    {
      title: '든든한 메인요리',
      subMenu: ['육류 요리', '해산물 요리'],
    },
    {
      title: '뜨끈한 국물요리',
      subMenu: ['국/탕/찌개'],
    },
    {
      title: '정갈한 밑반찬',
      subMenu: ['나물/무침', '조림/볶음', ' 절임/장아찌'],
    },
  ];
  return (
    <MenuContainer>
      {navMenus.map(({ title, subMenu }) => (
        <Menu key={uuidv4()} title={title} subMenu={subMenu} />
      ))}
    </MenuContainer>
  );
};

export default MenuList;

const MenuContainer = styled.ul`
  padding-left: 1.5rem;
  display: flex;
  align-items: center;
  position: relative;
`;
