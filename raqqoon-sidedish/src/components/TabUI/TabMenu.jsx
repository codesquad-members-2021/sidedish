import { ACTIVE, DEACTIVE } from 'const';
import { useState } from 'react';
import styled from 'styled-components';
import Tab from './Tab';

const TabMenu = () => {
  const [activeState, setActiveState] = useState(DEACTIVE);

  return (
    <TabMenuDiv>
      <Tab title={null} activeState={ACTIVE} />
      <Tab title={null} activeState={activeState} />
      <Tab title={null} activeState={activeState} />
      <Tab title={null} activeState={activeState} />
      <Tab title={null} activeState={activeState} />
    </TabMenuDiv>
  );
};

export default TabMenu;

const TabMenuDiv = styled.div`
  display: flex;
`;
