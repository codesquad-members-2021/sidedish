// Header
import { useState } from "react";
import styled, { css } from "styled-components";
import { cssFlexAlignCenter, cssFlexStartRow } from "../style/CommonStyledCSS";

import MenuItem from "./partial/MenuItem";
import Logo from "./partial/Logo";
import SearchBar from "./partial/SearchBar";

const Header = () => {
  const [tempData] = useState([
    {
      name: "든든한 메인요리",
      category: ["육류 요리", "해산물 요리"],
    },
    {
      name: "뜨끈한 국물요리",
      category: ["국/탕/찌개"],
    },
    {
      name: "정갈한 밑반찬",
      category: ["나물/무침", "조림/볶음", "절임/장아찌"],
    },
  ]);

  const [authData] = useState(['로그인', '장바구니']);


  const menuItems = tempData.map((data, i) => (
    <MenuItem
      key={i}
      flexOrder={i}
      dropdownData={data.category}
    >
      {data.name}
    </MenuItem>
  ));

  const authItems = authData.map((data, i) => (
    <MenuItem key={i} flexOrder={i}>{data}</MenuItem>
  ));

  return (
    <StyledHeader>
      <Logo>banchan</Logo>
      <MenuItems>{menuItems}</MenuItems>
      <SearchBar />
      <MenuItems type="auth">{authItems}</MenuItems>
    </StyledHeader>
  );
};

export default Header;

// --- Styled Components ---
const StyledHeader = styled.div`
  ${cssFlexAlignCenter};
  padding: 52px 0;
  margin: ${({ theme }) => theme.globalInfo.mp80};
  font-family: ${({ theme }) => theme.fontFamily};
  color: ${({ theme }) => theme.colors.gray3};
`;

const MenuItems = styled.div`
  ${cssFlexStartRow};
  margin-left: ${({ type }) => (type === "auth" ? "26px" : "56px")};
  ${({ type }) =>
    type !== "auth" &&
    css`
      margin-right: auto;
    `};
`;
