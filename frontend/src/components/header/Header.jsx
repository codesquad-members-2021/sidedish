import styled from "styled-components";
import HeaderLeft from "./HeaderLeft";
import HeaderRight from "./headerRight";
import { theme } from "../Theme";

const HeaderBlock = styled.div`
  width: 100%;
  height: 122px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: ${theme.padding.globalPadding};
  box-sizing: border-box;
`;

function Header() {
  return (
    <HeaderBlock>
      <HeaderLeft />
      <HeaderRight />
    </HeaderBlock>
  );
}

export default Header;
