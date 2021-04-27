import React from "react";
import styled from "styled-components";
import Icon from "../Icon";

const WrapDiv = styled.div`
  position: relative;

  display: flex;
  margin: 14px 26px 0 0;
`;
const Input = styled.input`
  background: #f5f5f7;
  border-radius: 5px;
  width: 248px;
  height: 40px;
  font-size: 16px;
`;
// const IconWrap = styled.div`
//   display: relative;
// `;

const SearchBar = ({ children, ...props }) => {
  return (
    <WrapDiv>
      <Input></Input>
      <Icon
        _type="SearchIcon"
        _color="gray"
        _position="absolute"
        _right="9px"
        _top="8px"
      ></Icon>
    </WrapDiv>
  );
};

export default SearchBar;
