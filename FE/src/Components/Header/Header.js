import React from "react";
import styled from "styled-components";
import { FaSearch } from "react-icons/fa";
const HeaderMain = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  min-width: 1250px;
`;
const MainNav = styled.ul`
  display: flex;
  list-style : none;
  align-items: center;`
const HeaderList = styled.li`
  margin-left: 25px;
  font-size: 20px;
`;
const HeaderLeft = styled.div`
  display: flex;
  align-items: center;
`;
const Logo = styled.h1`
  margin-right: 20px;
  font-size:40px;
`;
const MainInput = styled.input`
width: 300px;
height: 30px;
outline: none;
background-color: #f0f0f0;
border: none `;
const Search = styled.div`
background-color: #f0f0f0;
padding: 0px 5px;
border-radius: 10px;

`;
const SearchBtn = styled.button`
  padding: 7px;
  border: 0;
`;

const Header = () => {
  return (
    <HeaderMain>
    <HeaderLeft>
    <Logo>BANCHAN</Logo>
    <MainNav>
      <HeaderList>든든한 메인 요리</HeaderList>
      <HeaderList>뜨근한 국물요리</HeaderList>
      <HeaderList>정갈한 밑반찬</HeaderList>
    </MainNav>
    </HeaderLeft>
    <MainNav>
      <HeaderList><Search><MainInput type="text"/><SearchBtn><FaSearch/></SearchBtn></Search></HeaderList>
      <HeaderList>로그인</HeaderList>
      <HeaderList>장바구니</HeaderList>
    </MainNav>
    </HeaderMain>
  );
};

export default Header;
