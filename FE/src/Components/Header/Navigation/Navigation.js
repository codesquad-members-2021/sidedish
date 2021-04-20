import React from 'react';
import styled from 'styled-components';
import Dropdown from '../Dropdown/Dropdown';

const Navigation = () => {

  const navItems = new Map([
    ['든든한 메인요리', ['육류 요리', '해산물 요리']],
    ['뜨끈한 국물요리', ['국/탕/찌개']],
    ['정갈한 밑반찬', ['나물/무침', '조림/볶음', '절임/장아찌']]
  ]);
  const navItemArray = Array.from(navItems.entries());

  return (
    <NavWrapper>
      {navItemArray.map(([menuTitle, itemList], index) =>
        <NavContent key={index}>
          <NavSpan>{menuTitle}</NavSpan> <Dropdown list={itemList} ></Dropdown>
        </NavContent>
      )}
    </NavWrapper>
  );
};

const NavSpan = styled.span` 
  display:inline-block;
  width: 125px;
  padding: 16px 0;
  text-align:center;
  font-weight: 400;
  cursor: pointer;
  font-family: 'Noto Sans KR', sans-serif;
  &:hover{
    font-weight: 700;
  }
`;

const NavContent = styled.div`
    margin: 0 5px;
    &:hover >:last-child{
      display:flex;
    }
`;

const NavWrapper = styled.div`
  display:flex;
`;

export default Navigation;
