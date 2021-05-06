import styled from "styled-components";
import { cssTranslate, cssFlexAlignCenter } from "../../style/CommonStyledCSS";
import { IoSearchOutline } from "react-icons/io5";

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

// --- Styled Components ---
const StyledSearchBar = styled.div`
  position: relative;
  width: 240px;
  height: 40px;
  border-radius: 4px;
  background-color: ${({theme}) => theme.colors.gray6};
`;

const SearchInput = styled.input`
  ${cssTranslate};
  width: 100%;
  height: 100%;
  font-size: ${({ theme }) => theme.fontSize.M};
`;

const SearchButton = styled.button`
  ${cssTranslate};
  ${cssFlexAlignCenter};
  cursor: pointer;

  position: absolute;
  right: 0;
  top: 25%;

  font-size: 20px;
  color: ${({theme}) => theme.colors.gray4};
`;