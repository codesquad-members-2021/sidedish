import React from "react";
import styled, { ThemeProvider } from "styled-components";
import theme from "../../utils/constant";
import NavListItems from "./NavListItems";

const HeaderNavbar = (props) => {
  const navLists = [
    {
      title: "든든한 메인요리",
      subTitles: ["육류요리", "해산물요리"],
    },
    {
      title: "뜨끈한 국물요리",
      subTitles: ["국/탕/찌개"],
    },
    {
      title: "정갈한 밑반찬",
      subTitles: ["나물/무침", "조림/볶음", "절임/장아찌"],
    },
  ];

  const NavUL = styled.ul`
    display: flex;
    color: ${(props) => props.theme.colors.darkGray};
    font-size: ${(props) => props.theme.fontSizes.S};
  `;

  const navbarList = navLists.map((list, i) => (
    <NavListItems key={i} list={list} />
  ));

  return (
    <NavUL>
      <ThemeProvider theme={theme}>{navbarList}</ThemeProvider>
    </NavUL>
  );
};

export default HeaderNavbar;
