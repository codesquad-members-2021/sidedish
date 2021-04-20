import styled, { ThemeProvider } from "styled-components";
import theme from "../../utils/constant.js";
import HeaderNavbar from "./HeaderNavbar.jsx";

const HeaderLeftSection = styled.div`
  display: flex;
`;

const BanchanTitle = styled.div`
  color: ${(props) => props.theme.colors.darkGray};
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-family: Noto Sans KR;
  font-weight: 900;
`;

const HeaderLeft = () => {
  return (
    <ThemeProvider theme={theme}>
      <HeaderLeftSection>
        <BanchanTitle>BANCHAN</BanchanTitle>
        <HeaderNavbar />
      </HeaderLeftSection>
    </ThemeProvider>
  );
};

export default HeaderLeft;
