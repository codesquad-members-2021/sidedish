// Header
import React, { useState } from "react";
import styled, { css } from "styled-components";
import { cssFlexAlignCenter, cssFlexStartRow } from "../common/CommonStyledCSS";

import MenuItem from "./partial/MenuItem";
import Logo from "./partial/Logo";
import SearchBar from "./partial/SearchBar";

const StyledHeader = styled.div`
  ${cssFlexAlignCenter};
  padding: 52px 0;
  font-family: ${({ theme }) => theme.fontFamily};
  color: ${({ theme }) => theme.colors.gray};
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

const Header = () => {
  const [tempInfo] = useState(["든든한 메인요리","뜨끈한 국물요리","정갈한 밑반찬"]);
  const [tempInfo2] = useState(["로그인","장바구니"]);

  const menuItems = tempInfo.map((v, i) => (
    <MenuItem key={i} flexOrder={i}>{v}</MenuItem>
  ));

  const authItems = tempInfo2.map((v, i) => (
    <MenuItem key={i} flexOrder={i}>{v}</MenuItem>
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
