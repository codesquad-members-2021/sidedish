import styled from "styled-components";
import { FaSearch } from "react-icons/fa";

const HeaderRightStyle = styled.div`
  display: flex;
  align-items: center;
  width: 40vw;
  justify-content: flex-end;
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

export default function HeaderRight() {
  return (
    <HeaderRightStyle>
      <SearchBoxStyle>
        <SearchInputStyle />
        <SearchIconStyle><FaSearch /></SearchIconStyle>
      </SearchBoxStyle>
      <HeaderAnchorStyle>로그인</HeaderAnchorStyle>
      <HeaderAnchorStyle>장바구니</HeaderAnchorStyle>
    </HeaderRightStyle>
  );
}