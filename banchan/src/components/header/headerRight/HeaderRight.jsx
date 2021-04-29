import styled from "styled-components";
import IconButton from "../../componentUtils/button/IconButton";
import { CenterContainer } from "../../componentUtils/styles/common";
import { Link } from "react-router-dom";

const HeaderRight = ({ loginState, setLoginState }) => {
  const tempFn = () => {
    console.log("hello");
  };

  const onClickLogOut = () => {
    //
    localStorage.removeItem("token");
    setLoginState(false);
  };

  return (
    <HeaderRightDiv>
      <SearchBox>
        <input />
        <IconButton type="SEARCH" fn={tempFn} />
      </SearchBox>
      {loginState ? (
        <StyledSpan onClick={onClickLogOut}>로그아웃</StyledSpan>
      ) : (
        <Link to="/login">
          <StyledSpan>로그인</StyledSpan>
        </Link>
      )}

      <StyledSpan>장바구니</StyledSpan>
    </HeaderRightDiv>
  );
};

const HeaderRightDiv = styled(CenterContainer)`
  justify-content: start;
`;

const StyledSpan = styled.span`
  margin: 0 12px;
  font-size: ${({ theme }) => theme.fontSizes.S};
  cursor: pointer;
  &:hover {
    font-weight: bold;
  }
`;
const SearchBox = styled(CenterContainer)`
  justify-content: space-between;
  border-radius: ${({ theme }) => theme.borders.radius};
  background: ${({ theme }) => theme.colors.lightGrayBG};
  width: 248px;
  height: 40px;
  padding: 0 10px 0 15px;
  input {
    all: unset;
  }
`;
export default HeaderRight;
