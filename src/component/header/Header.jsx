import styled from "styled-components";
import HeaderLeft from "./HeaderLeft";
import HeaderRight from "./HeaderRight";

const HeaderStyle = styled.header`
  display: flex;
  margin-top: 1rem;
  margin-bottom: 5rem;
  justify-content: space-between;
  align-items: center;
`;

export default function Header() {
  return (
    <HeaderStyle>
      <HeaderLeft/>
      <HeaderRight/>
    </HeaderStyle>
  )
};
