import styled from "styled-components";
import { FaSearch } from "react-icons/fa";

const HeaderStyle = styled.header`
  display: flex;
  margin-top: 1rem;
  margin-bottom: 5rem;
  justify-content: space-between;
  align-items: center;
`;

const HeaderLeftStyle = styled.div`
  display: flex;
  align-items: center;
  width: 60vw;
`;
const HeaderRightStyle = styled.div`
  display: flex;
  align-items: center;
  width: 40vw;
  justify-content: flex-end;
`;

const LogoStyle = styled.div`
  font-size: 2.5rem;
  font-weight: 900;
  margin-right: 4rem;
  padding-bottom: 0.2rem;
`;
const NavigationsStyle = styled.div`
  display: grid;
  grid-template-columns: repeat(3, 10rem);
  grid-gap: 1rem;
  font-size: 1rem;
  font-weight: 400;
  a {
    cursor: pointer;
  }
  a:hover {
    font-weight: 600;
  }
`;
const SearchBoxStyle = styled.div`
  padding: 0.5rem;
  background-color: #f5f5f7;
  position: relative;
  border-radius: 0.2rem;
`;
const SearchInputStyle = styled.input.attrs({
  type: "text"
})`
  min-width: 15rem;
  letter-spacing: 0.05rem;
  background-color: transparent;
`;
const SearchIconStyle = styled.div`
  position: absolute;
  right: 0.6rem;
  top: 0.5rem;
  font-size: 1.2rem;
  color: #bbb;
`;
const HeaderAnchorStyle = styled.a`
  margin-left: 1.5rem;
  cursor: pointer;
  &:hover {
    font-weight: 600;
  }
`;

export default function Header() {
  return (
    <HeaderStyle>
      <HeaderLeftStyle>
        <LogoStyle>BANCHAN</LogoStyle>
        <NavigationsStyle>
          <a>든든한 메인요리</a>
          <a>뜨끈한 국물요리</a>
          <a>정갈한 밑반찬</a>
        </NavigationsStyle>
      </HeaderLeftStyle>
      <HeaderRightStyle>
        <SearchBoxStyle>
          <SearchInputStyle />
          <SearchIconStyle><FaSearch /></SearchIconStyle>
        </SearchBoxStyle>
        <HeaderAnchorStyle>로그인</HeaderAnchorStyle>
        <HeaderAnchorStyle>장바구니</HeaderAnchorStyle>
      </HeaderRightStyle>
    </HeaderStyle>
  )
};