import styled from 'styled-components';

const Header = () => {
  return (
    <HeaderWrap>
      <Nav>
        <Logo>BANCHAN</Logo>
        <Menu>
          <span>든든한 메인요리</span>
          <span>뜨끈한 국물요리</span>
          <span>정갈한 밑반찬</span>
        </Menu>
        <div>
          <input type="text" placeholder="🔍" />
          <span>로그인</span>
          <span>장바구니</span>
        </div>
      </Nav>
    </HeaderWrap>
  );
};

export default Header;

const HeaderWrap = styled.header`
  padding: 2rem 5rem;
  width: 100%;
  height: 10.95rem;
`;

const Nav = styled.nav`
  padding: 0 5rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 7.625rem;

  input::placeholder {
    text-align: right;
  }
`;

const Logo = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 900;
  font-size: 40px;
  line-height: 58px;
  letter-spacing: -0.04em;
  text-transform: uppercase;
  color: #333333;
`;

const Menu = styled.div`
  padding-left: 1rem;
  width: 50rem;
  display: flex;
  align-items: center;

  span {
    padding-right: 24px;
    width: 107px;
    height: 23px;
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 16px;
    line-height: 23px;
    color: #333333;
  }
`;
