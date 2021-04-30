import { useState, useEffect } from "react";
import styled from "styled-components";
import BestTabContainer from "./BestTabContainer";
import BestTabNavigator from "./BestTabNavigator";
import api from "../../../common/api.js";
import SkeletonTab from "./SkeletonTab";

const BestTabStyle = styled.div`
  h2 {
    margin-bottom: 2rem;
  }
  margin-bottom: 5rem;
`;

export default function BestTab() {
  const [active, setActive] = useState(0);
  const [bestItems, setBestItems] = useState(null);

  useEffect(() => {
    if (!bestItems) {
      try {
        (async () => {
          const data = await api("/best");
          setTimeout(() => setBestItems(data), 1000);
        })();
      } catch (e) {
        console.log(e);
      }
    }
    return;
  }, [bestItems]);

  return (
    <>
      {bestItems ? (
        <BestTabStyle>
          <h2>후기가 증명하는 베스트 반찬</h2>
          <BestTabNavigator
            bestItems={bestItems}
            active={active}
            setActive={setActive}
          />
          <BestTabContainer bestItem={bestItems[active]} />
        </BestTabStyle>
      ) : (
        <SkeletonTab />
      )}
    </>
  );
}
