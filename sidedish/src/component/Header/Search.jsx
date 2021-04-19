import styled from 'styled-components';

const SearchInput = styled.input`
  display: flex;
  align-items: center;
  background-repeat: no-repeat;
  border: 1px solid #ccc;
  padding: 5px 5px;
  padding-right: 5px;
  width: 250px;
  height: 40px;
  background: #f5f5f7;
  border-radius: 5px;
  margin-right: 10px;
  font-size: 1.2rem;

  &::-webkit-input-placeholder {
    background-image: url(https://cdn1.iconfinder.com/data/icons/hawcons/32/698627-icon-111-search-256.png);
    background-size: contain;
    background-position: right 0;
    background-repeat: no-repeat;
    text-align: center;
    text-indent: 0;
    font-size: 1.2rem;
  }
`;

const Search = () => {
  return <SearchInput type="text" name="search" placeholder=" " autoComplete="off"></SearchInput>;
};

export default Search;
