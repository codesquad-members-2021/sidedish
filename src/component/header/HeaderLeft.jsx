import styled from "styled-components";
import Navigations from "./Navigations";

const HeaderLeftStyle = styled.div`
  display: flex;
  align-items: center;
  width: 60vw;
`;

const LogoStyle = styled.div`
  font-size: 2.5rem;
  font-weight: 900;
  margin-right: 4rem;
  padding-bottom: 0.2rem;
`;

export default function HeaderLeft() {
  return (
    <HeaderLeftStyle>
      <LogoStyle>BANCHAN</LogoStyle>
      <Navigations/>
    </HeaderLeftStyle>
  );
}