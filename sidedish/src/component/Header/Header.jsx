import React from 'react';
import CartButton from './CartButton';
import LoginButton from './LoginButton';
import Logo from './Logo';
import Search from './Search';
import Tab from './Tab';
import styled from 'styled-components';

const HeaderContainer = styled.div`
  width: 100%;
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
  const tabList = ['든든한 메인요리', '뜨끈한 국물요리', '정갈한 밑반찬'];
  return (
    <HeaderContainer>
      <Logo />
      <Tab tabList={tabList} />
      <div className="userMenuBar">
        <Search />
        <LoginButton />
        <CartButton />
      </div>
    </HeaderContainer>
  );
};

export default Header;
