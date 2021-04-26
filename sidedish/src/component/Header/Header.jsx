import React from 'react';
import CartButton from './CartButton';
import LoginButton from './LoginButton';
import Logo from './Logo';
import Search from './Search';
import TabList from './TabList';
import styled from 'styled-components';

const HeaderContainer = styled.div`
  width: 100%;
  min-width: 1280px;
  height: 70px;
  display: grid;
  grid-template-columns: 0.5fr 1.5fr 1fr;
  align-items: center;
  .userMenuBar {
    display: flex;
    align-items: center;
    justify-content: flex-end;
  }
`;

export const HeaderBtn = styled.div`
  margin: 0 10px;
`;

const Header = () => {
  const tabList = [
    { title: '든든한 메인요리', subMenu: ['육류 요리', '해산물 요리'] },
    { title: '뜨끈한 국물요리', subMenu: ['국/탕/찌개'] },
    { title: '정갈한 밑반찬', subMenu: ['나물/무침', '조림/볶음', '절임/장아찌'] },
  ];
  return (
    <HeaderContainer>
      <Logo />
      <TabList tabList={tabList} />
      <div className="userMenuBar">
        <Search />
        <LoginButton />
        <CartButton />
      </div>
    </HeaderContainer>
  );
};

export default Header;
