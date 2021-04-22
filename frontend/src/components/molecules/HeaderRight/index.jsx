import React from "react";
import styled from "styled-components";
import SearchBar from "../../atoms/Searchbar";
import Span from "../../atoms/Span";
const WrapDiv = styled.div`
  display: flex;
  margin: 32px 100px 80px 80px;
  min-width: 700px;
`;

const Li = styled.li`
  list-style-type: none;
  float: left;
  padding: 11px 0;
`;

const HeaderRight = ({ children, ...props }) => {
  return (
    <WrapDiv>
      <SearchBar />
      <ul>
        <Li>
          <Span _title>로그인</Span>
        </Li>
        <Li>
          <Span _title>장바구니</Span>
        </Li>
      </ul>
    </WrapDiv>
  );
};

export default HeaderRight;
