import styled from "styled-components";
import HeaderNavbar from "./HeaderNavbar.jsx";
import { CenterContainer } from "../../componentUtils/styles/common.jsx";

const HeaderLeft = () => {
  return (
    <HeaderLeftDiv>
      <BanchanTitle>BANCHAN</BanchanTitle>
      <HeaderNavbar />
    </HeaderLeftDiv>
  );
};

const HeaderLeftDiv = styled(CenterContainer)``;

const BanchanTitle = styled.div`
  color: ${({ theme }) => theme.colors.darkGray};
  font-size: ${({ theme }) => theme.fontSizes.XL};
  font-weight: 900;
  margin-right: 12px;
`;

export default HeaderLeft;
