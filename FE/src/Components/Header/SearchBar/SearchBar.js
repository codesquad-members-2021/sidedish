import React from 'react';
import styled from 'styled-components';
import magnifyingGlassImage from '../../../images/magnifyingGlass.svg';


const SearchBar = () => {
  return (
    <SearchBarWrapper>
      <img src={magnifyingGlassImage} alt="돋보기" />
    </SearchBarWrapper>
  );
};

const SearchBarWrapper = styled.div`
  display: flex;
  width: 250px;
  height: 40px;
  padding: 0 5px 0 0;
  background: #F5F5F7;
  align-items: center;
  place-content: flex-end;
`;

export default SearchBar;