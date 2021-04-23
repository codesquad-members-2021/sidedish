import React from "react";
import styled from "styled-components";
import HeaderLeft from "../../molecules/HeaderLeft";
import HeaderRight from "../..//molecules/HeaderRight";

const Header = ({ children, ...props }) => {
  const WrapDiv = styled.div`
    display: flex;
    justify-content: space-between;
    padding: 0 80px;
  `;
  return (
    <WrapDiv>
      <HeaderLeft />
      <HeaderRight />
    </WrapDiv>
  );
};

export default Header;
