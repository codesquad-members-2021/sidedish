import React from "react";
import { WrapDiv, Li } from "./index.style";
import SearchBar from "../../atoms/Searchbar";
import Span from "../../atoms/Span";

const HeaderRight = ({ children, ...props }) => {
  return (
    <WrapDiv>
      <SearchBar />
      <ul>
        <Li>
          <Span _login _margin="16px 24px 0 0">
            로그인
          </Span>
        </Li>
        <Li>
          <Span _login _margin="16px 0 0 0">
            장바구니
          </Span>
        </Li>
      </ul>
    </WrapDiv>
  );
};

export default HeaderRight;
