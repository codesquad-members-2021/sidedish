import styled from "styled-components";
import BestTabContainer from "./BestTabContainer";
import BestTabNavigator from "./BestTabNavigator";

const BestTabStyle = styled.div`
  h2 {
    margin-bottom: 2rem;
  }
`;

export default function BestTab() {
  return (
    <BestTabStyle>
      <h2>후기가 증명하는 베스트 반찬</h2>
      <BestTabNavigator/>
      <BestTabContainer/>
    </BestTabStyle>
  )
}