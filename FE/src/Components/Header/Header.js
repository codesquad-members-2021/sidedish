import React from 'react';
import styled from 'styled-components';
import Navigation from './Navigation/Navigation';
import SearchBar from './SearchBar/SearchBar';
import { Container } from '../commons/styledComponents';

const Header = () => {
  return (
    <FlexBetweenWrapper>
      <FlexWrapper>
        <Logo>BANCHAN</Logo>
        <Navigation />
      </FlexWrapper>

      <FlexWrapper>
        <SearchBar />
        <span> &nbsp;&nbsp;&nbsp;로그인 &nbsp;&nbsp; 장바구니</span>
      </FlexWrapper>
    </FlexBetweenWrapper>
  );
};

const Logo = styled.span`
  font-size: 40px;
  font-weight: 900;
  margin: 0 20px 0 0;
`;

const FlexWrapper = styled.div`
  display: flex;
  align-items: center;
`;

const FlexBetweenWrapper = styled(Container)`
  width: 100%;
  
  display: flex;
  justify-content: space-between;
  margin-bottom: 80px;
  margin-top: 32px;
`;

export default Header;