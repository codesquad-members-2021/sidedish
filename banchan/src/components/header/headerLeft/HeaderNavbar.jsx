import React from "react";
import styled from "styled-components";

const HeaderNavbar = (props) => {
  const NavList = styled.ul`
    display: flex;
  `;

  return (
    <NavList>
      <li>든든한 메인요리</li>
      <li>뜨끈한 국물요리</li>
      <li>정갈한 밑반찬</li>
    </NavList>
  );
};

export default HeaderNavbar;
