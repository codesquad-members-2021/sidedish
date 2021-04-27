import SearchButton from "../SearchBar/SearchButton";
import SearchInput from "./SearchInput";
import * as S from "../HeaderStyles";

const SearchBar = () => {
  return (
    <S.SearchBar>
      <SearchInput />
      <SearchButton></SearchButton>
    </S.SearchBar>
  );
};

export default SearchBar;
