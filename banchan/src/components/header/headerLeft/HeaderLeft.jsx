import styled from "styled-components";
import HeaderNavbar from "./HeaderNavbar.jsx";

const HeaderLeft = () => {
  return (
    <HeaderLeftDiv>
      <BanchanTitle>BANCHAN</BanchanTitle>
      <HeaderNavbar />
    </HeaderLeftDiv>
  );
};

const HeaderLeftDiv = styled.div`
  display: flex;
  align-items: center;
`;

const BanchanTitle = styled.div`
  color: ${(props) => props.theme.colors.darkGray};
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: 900;
  margin-right: 12px;
`;
export default HeaderLeft;
