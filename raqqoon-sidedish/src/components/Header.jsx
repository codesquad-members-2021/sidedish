import styled from 'styled-components';
import MenuList from 'components/nav/MenuList';
import Login from 'components/nav/Login';

const Header = () => {
  return (
    <HeaderWrap>
      <Nav>
        <NavLeft>
          <Logo>BANCHAN</Logo>
          <MenuList />
        </NavLeft>
        <NavRight>
          <input type="text" placeholder="🔍" />
          <Login />
          <span>장바구니</span>
        </NavRight>
      </Nav>
    </HeaderWrap>
  );
};

export default Header;

const HeaderWrap = styled.header`
  width: 1280px;
  margin: 0 5rem;
  padding: 2rem 0;
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

const NavRight = styled.div`
  display: flex;
  align-items: center;

  input {
    width: 15.5rem;
    height: 2.5rem;
    font-size: 1.5rem;
    padding: 0.5rem;
    outline: none;
    border-radius: 5px;
    border: 1px solid #f5f5f7;
    background: #f5f5f7;

    ::placeholder {
      text-align: right;
      font-size: 1.5rem;
    }
  }

  span {
    padding-left: 1.5rem;
    font-family: Noto Sans KR;
    font-size: 1rem;
    font-weight: 400;
  }
`;
