import React from "react";
import styled from "styled-components";
import { cssTranslate, cssFlexAlignCenter } from "../../common/CommonStyledCSS";
import { IoSearchOutline } from "react-icons/io5";

const StyledSearchBar = styled.div`
  position: relative;
  width: 240px;
  height: 40px;
  border-radius: 4px;
  background-color: ${({theme}) => theme.colors.lightGray};
`;

const SearchInput = styled.input`
  ${cssTranslate};
  width: 100%;
  height: 100%;
  font-size: ${({ theme }) => theme.fontSize.m};
`;

const SearchButton = styled.button`
  ${cssTranslate};
  ${cssFlexAlignCenter};
  cursor: pointer;

  position: absolute;
  right: 0;
  top: 25%;

  font-size: 20px;
  color: ${({theme}) => theme.colors.gray2};
`;

const SearchBar = () => {
  return (
    <StyledSearchBar>
      <SearchInput type="text" />
      <SearchButton>
        <IoSearchOutline />
      </SearchButton>
    </StyledSearchBar>
  );
};

export default SearchBar;
