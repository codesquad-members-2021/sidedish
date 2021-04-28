import styled from "styled-components";
import BestItems from "./BestItems";

const BestTabContainerStyle = styled.div``;

export default function BestTabContainer({ bestItem }) {
  return (
    <BestTabContainerStyle>
      <BestItems childs={bestItem.childs}/>
    </BestTabContainerStyle>
  )
}