
import styled from 'styled-components';
import TabBody from './TabBody';
import TabHeader from './TabHeader';


const TabUI = () => {
  return (
    <TabUIBoxDiv>
      <TabHeader />
      <TabBody />
    </TabUIBoxDiv>
  );
};

export default TabUI;

const TabUIBoxDiv = styled.div``;
