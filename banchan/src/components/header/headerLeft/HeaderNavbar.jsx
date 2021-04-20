import React from "react";
import styled, { ThemeProvider } from "styled-components";
import theme from "../../utils/constant";

const HeaderNavbar = (props) => {
  const NavList = styled.ul`
    display: flex;
    color: ${(props) => props.theme.colors.darkGray};
    font-size: ${(props) => props.theme.fontSizes.S};
  `;

  return (
    <NavList>
      <ThemeProvider theme={theme}>
        <li>든든한 메인요리</li>
        <li>뜨끈한 국물요리</li>
        <li>정갈한 밑반찬</li>
      </ThemeProvider>
    </NavList>
  );
};

export default HeaderNavbar;
