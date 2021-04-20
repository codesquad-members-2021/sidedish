import styled, { ThemeProvider } from "styled-components";
import theme from "../../utils/constant.js";
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
`;

const HeaderLeft = () => {
  return (
    <ThemeProvider theme={theme}>
      <HeaderLeftDiv>
        <BanchanTitle>BANCHAN</BanchanTitle>
        <HeaderNavbar />
      </HeaderLeftDiv>
    </ThemeProvider>
  );
};

export default HeaderLeft;
