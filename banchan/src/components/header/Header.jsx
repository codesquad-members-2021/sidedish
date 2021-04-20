import HeaderLeft from "./headerLeft/HeaderLeft";
import HeaderRight from "./headerRight/HeaderRight";
import styled from "styled-components";

const HeaderContainer = styled.div`
  display: flex;
  justify-content: space-between;
  margin: 32px 80px 20px 80px;
`;

const Header = () => {
  return (
    <HeaderContainer>
      <HeaderLeft />
      <HeaderRight />
    </HeaderContainer>
  );
};

export default Header;
