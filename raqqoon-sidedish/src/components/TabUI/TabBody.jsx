import styled from 'styled-components';
import useFetch from 'customHooks/useFetch';
import useTab from 'customHooks/useTab';
import TabList from 'components/tabUI/TabList';
import TabMain from 'components/tabUI/TabMain';

const TabBody = ({ setModalState }) => {
  const bestData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best`,
    []
  );

  const { tabItemList, tabIndex, setTabIndex } = useTab(0, bestData);

  return (
    <TabBodyBoxDiv>
      <TabList
        bestData={bestData}
        setTabIndex={setTabIndex}
        tabIndex={tabIndex}
      />
      <TabMain {...{ tabItemList, setModalState }} />
    </TabBodyBoxDiv>
  );
};

export default TabBody;

const TabBodyBoxDiv = styled.div`
  display: flex;
  flex-direction: column;
`;
