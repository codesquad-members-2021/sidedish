import React, { useState } from "react";
import styled, { ThemeProvider } from "styled-components";
import theme from "../../utils/constant";

const NavListItems = ({ list }) => {
  const NavLITitle = styled.span`
    &:hover {
      font-weight: bold;
    }
  `;
  const [isMouseOver, setIsMouseOver] = useState(false);
  const NavLI = styled.li`
    margin: 0 12px;
  `;

  const NavLIBox = styled.ul`
    padding: 5px 7px;
    display: flex;
    flex-direction: column;
    min-width: 100px;
    min-height: 86px;
    background: #ffffff;
    box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
      0px 2px 4px rgba(0, 0, 0, 0.25);
    position: absolute;
    top: 65px;
  `;

  const SubElementsLI = styled.li`
    margin: 3px 0;
    &:first-child {
      font-weight: bold;
      text-decoration: underline;
      color: ${(props) => props.theme.colors.darkGray};
    }
    color: ${(props) => props.theme.colors.gray};
    font-weight: "400";
  `;

  const handleMouseEnter = () => {
    setIsMouseOver((isMouseOver) => (isMouseOver = true));
  };

  const handleMouseLeave = () => {
    setIsMouseOver((isMouseOver) => (isMouseOver = false));
  };

  const listSubElements = list.subTitles.map((el) => (
    <SubElementsLI>{el}</SubElementsLI>
  ));

  return (
    <ThemeProvider theme={theme}>
      <NavLI onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
        <NavLITitle>{list.title}</NavLITitle>
        {isMouseOver ? <NavLIBox>{listSubElements}</NavLIBox> : ""}
      </NavLI>
    </ThemeProvider>
  );
};

export default NavListItems;
