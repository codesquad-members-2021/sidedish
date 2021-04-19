import styled from 'styled-components';

const SearchInput = styled.input`
  background-repeat: no-repeat;
  border: 1px solid #ccc;
  padding: 5px 5px;
  width: 120px;

  &::-webkit-input-placeholder {
    background-image: url(https://cdn1.iconfinder.com/data/icons/hawcons/32/698627-icon-111-search-256.png);
    background-size: contain;
    background-position: right;
    background-repeat: no-repeat;
    text-align: center;
    text-indent: 0;
  }
`;

const Search = () => {
  return <SearchInput type="text" name="search" placeholder=" "></SearchInput>;
};

export default Search;
