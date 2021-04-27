import React from 'react';
import styled from 'styled-components';
import Navigation from 'Components/Header/Navigation/Navigation';
import SearchBar from 'Components/Header/SearchBar/SearchBar';
import { Container } from 'Components/commons/base';

const Header = () => {
  return (
    <FlexHeader>
      <FlexWrapper basis='60%' place='flex-start'>
        <Logo>BANCHAN</Logo>
        <Navigation />
      </FlexWrapper>

      <FlexWrapper basis='40%' place='flex-end'>
        <SearchBar />
        <span> &nbsp;&nbsp;&nbsp;로그인 &nbsp;&nbsp; 장바구니</span>
      </FlexWrapper>
    </FlexHeader>
  );
};

const FlexHeader = styled(Container)`
  display: flex;
  margin-bottom: 80px;
  margin-top: 32px;
`;

const FlexWrapper = styled.div`
  display: flex;
  flex-basis:${({ basis }) => basis};
  align-items: center;
  place-content: ${({ place }) => place};
`;

const Logo = styled.span`
  font-size: 40px;
  font-weight: 900;
  margin: 0 56px 0 0;
`;

export default Header;