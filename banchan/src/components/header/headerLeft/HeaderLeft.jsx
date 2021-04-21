import styled from "styled-components";
import HeaderNavbar from "./HeaderNavbar.jsx";

const HeaderLeftDiv = styled.div`
  display: flex;
  align-items: center;
  font-family: Noto Sans KR;
`;

const BanchanTitle = styled.div`
  color: ${(props) => props.theme.colors.darkGray};
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: 900;
  margin-right: 12px;
`;

const HeaderLeft = () => {
  return (
    <HeaderLeftDiv>
      <BanchanTitle>BANCHAN</BanchanTitle>
      <HeaderNavbar />
    </HeaderLeftDiv>
  );
};

export default HeaderLeft;
