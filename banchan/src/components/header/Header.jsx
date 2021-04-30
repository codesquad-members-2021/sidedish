import HeaderLeft from "./headerLeft/HeaderLeft";
import HeaderRight from "./headerRight/HeaderRight";
import styled from "styled-components";
import { CenterContainer } from "../componentUtils/styles/common";

const Header = ({ loginState, setLoginState }) => {
  return (
    <HeaderContainer>
      <HeaderLeft />
      <HeaderRight loginState={loginState} setLoginState={setLoginState} />
    </HeaderContainer>
  );
};

const HeaderContainer = styled(CenterContainer)`
  justify-content: space-between;
  margin: 32px 80px 20px 80px;
`;

export default Header;
