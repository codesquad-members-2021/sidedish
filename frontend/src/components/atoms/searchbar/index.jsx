import React from "react";
import styled from "styled-components";
import Icon from "../icon";

const WrapDiv = styled.div`
  position: relative;

  display: flex;
  margin-right: 26px;
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
        _right="20px"
      ></Icon>
    </WrapDiv>
  );
};

export default SearchBar;
