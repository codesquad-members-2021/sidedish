import styled from 'styled-components';
import TabMain from './TabMain';
import TabMenu from './TabMenu';

const TabBody = () => {
  return (
    <TabBodyBoxDiv>
      <TabMenu />
      <TabMain />
    </TabBodyBoxDiv>
  );
};

export default TabBody;

const TabBodyBoxDiv = styled.div``;
