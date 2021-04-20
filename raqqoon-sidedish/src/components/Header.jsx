import styled from 'styled-components';

const Header = () => {
  return (
    <HeaderWrap>
      <Nav>
        <NavLeft>
          <Logo>BANCHAN</Logo>
          <Menu>
            <span>든든한 메인요리</span>
            <span>뜨끈한 국물요리</span>
            <span>정갈한 밑반찬</span>
          </Menu>
        </NavLeft>
        <NavRight>
          <input type="text" placeholder="🔍" />
          <span>로그인</span>
          <span>장바구니</span>
        </NavRight>
      </Nav>
    </HeaderWrap>
  );
};

export default Header;

const HeaderWrap = styled.header`
  padding: 2rem 5rem;
  width: 100vw;
  height: 10.95rem;
`;

const Nav = styled.nav`
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 7.625rem;
`;

const NavLeft = styled.div`
  display: flex;
`;

const Logo = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 900;
  font-size: 2.5rem;
  letter-spacing: -0.04em;
  text-transform: uppercase;
  color: #333333;
`;

const Menu = styled.div`
  padding-left: 1.5rem;
  display: flex;
  align-items: center;

  span {
    margin-right: 2rem;
    width: 107px;
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 1rem;
    color: #333333;
  }
`;

const NavRight = styled.div`
  input {
    width: 15.5rem;
    height: 2.5rem;
    font-size: 1.5rem;

    ::placeholder {
      text-align: right;
      font-size: 1.5rem;
    }
  }

  span {
    padding-left: 1.5rem;
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: normal;
    font-size: 1rem;
    line-height: 23px;
  }
`;
