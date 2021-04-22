import React, { useState } from "react";
import styled from "styled-components";
import { FaSearch } from "react-icons/fa";
const HeaderMain = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  min-width: 1100px;
  width: 1440px;
  height: 122px;
`;
const MainNav = styled.ul`
  display: flex;
  list-style: none;
  align-items: center;
`;
const HeaderList = styled.li`
  margin-left: 20px;
  font-size: 20px;
`;
const HeaderLeft = styled.div`
  display: flex;
  align-items: center;
`;
const Logo = styled.h1`
  font-size: 40px;
`;
const MainInput = styled.input`
  width: 80%;
  outline: none;
  background-color: #f0f0f0;
  border: none;
`;

const Search = styled.div`
  width: 150px;
  background-color: #f0f0f0;
  padding: 0px 5px;
  border-radius: 10px;
  display: flex;
`;

const SearchBtn = styled.button`
  padding: 7px;
  border: 0;
`;
const DropMenu1 = styled.ul`
  position: absolute;
  top: 70%;
  left: -10%;
  list-style: none;
  text-align: left;
`;
const DropMenu2 = styled.ul`
  position: absolute;
  top: 70%;
  left: -10%;
  list-style: none;
  text-align: left;
`;
const DropMenu3 = styled.ul`
  position: absolute;
  top: 70%;
  left: -18%;
  list-style: none;
  text-align: left;
`;
const MenuBtn = styled.button`
  border: 0;
  outline: 0;
  background-color: transparent;
  font-size: 20px;
  padding: 30px 0;
  position: relative;
`;
const DropBtn = styled.button`
  border: 0;
  outline: 0;
  background-color: transparent;
  font-size: 15px;
  color: gray;
  &:hover {
    color: black;
    text-decoration: underline;
  }
`;
const DropList = styled.li``;
const Header = () => {
  const [isShownDrop1, setIsShownDrop1] = useState(false);
  const [isShownDrop2, setIsShownDrop2] = useState(false);
  const [isShownDrop3, setIsShownDrop3] = useState(false);

  return (
    <HeaderMain>
      <HeaderLeft>
        <Logo>BANCHAN</Logo>
        <MainNav>
          <HeaderList>
            <MenuBtn
              onMouseOver={() => setIsShownDrop1(true)}
              onMouseLeave={() => setIsShownDrop1(false)}
            >
              든든한 메인 요리
              {isShownDrop1 && (
                <DropMenu1>
                  <DropList>
                    <DropBtn>육류 요리</DropBtn>
                  </DropList>
                  <DropList>
                    <DropBtn>해산물 요리</DropBtn>
                  </DropList>
                </DropMenu1>
              )}
            </MenuBtn>
          </HeaderList>
          <HeaderList>
            <MenuBtn
              onMouseOver={() => setIsShownDrop2(true)}
              onMouseLeave={() => setIsShownDrop2(false)}
            >
              뜨끈한 국물요리
              {isShownDrop2 && (
                <DropMenu2>
                  <DropList>
                    <DropBtn>국탕찌개</DropBtn>
                  </DropList>
                </DropMenu2>
              )}
            </MenuBtn>
          </HeaderList>
          <HeaderList>
            <MenuBtn
              onMouseOver={() => setIsShownDrop3(true)}
              onMouseLeave={() => setIsShownDrop3(false)}
            >
              정갈한 밑반찬
              {isShownDrop3 && (
                <DropMenu3>
                  <DropList>
                    <DropBtn>나물/무침</DropBtn>
                  </DropList>
                  <DropList>
                    <DropBtn>조림/볶음</DropBtn>
                  </DropList>
                  <DropList>
                    <DropBtn>절임/장아찌</DropBtn>
                  </DropList>
                </DropMenu3>
              )}
            </MenuBtn>
          </HeaderList>
        </MainNav>
      </HeaderLeft>
      <MainNav>
        <HeaderList>
          <Search>
            <MainInput type="text" />
            <SearchBtn>
              <FaSearch />
            </SearchBtn>
          </Search>
        </HeaderList>
        <HeaderList>로그인</HeaderList>
        <HeaderList>장바구니</HeaderList>
      </MainNav>
    </HeaderMain>
  );
};

export default Header;
