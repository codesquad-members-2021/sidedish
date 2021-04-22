import styled from 'styled-components';
import TabBody from 'components/tabUI/TabBody';
import TabHeader from 'components/tabUI/TabHeader';

const TabUI = () => {
  return (
    <TabUIBoxDiv>
      <TabHeader />
      <TabBody />
    </TabUIBoxDiv>
  );
};

export default TabUI;

const TabUIBoxDiv = styled.div`
  width: fit-content;
`;
