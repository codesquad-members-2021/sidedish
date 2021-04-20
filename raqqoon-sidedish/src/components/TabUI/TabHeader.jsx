import styled from 'styled-components';
import TabTitle from './TabTitle';

const TabHeader = () => {
  return (
    <TabHeaderBoxDiv>
      <TabTitle />
    </TabHeaderBoxDiv>
  );
};

export default TabHeader;

const TabHeaderBoxDiv = styled.div`
  margin-bottom: 24px;
`;
