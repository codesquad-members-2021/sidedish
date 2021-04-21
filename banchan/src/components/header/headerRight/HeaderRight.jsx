import styled from "styled-components";

const HeaderRight = (props) => {
  const HeaderRightDiv = styled.div`
    display: flex;
    align-items: center;
  `;

  const StyledSpan = styled.span`
    margin: 0 12px;
    font-size: ${(props) => props.theme.fontSizes.S};
    font-family: "Noto Sans KR";
    cursor: pointer;
    &:hover {
      font-weight: bold;
    }
  `;

  return (
    <HeaderRightDiv>
      <input />
      <StyledSpan>로그인</StyledSpan>
      <StyledSpan>장바구니</StyledSpan>
    </HeaderRightDiv>
  );
};

export default HeaderRight;
