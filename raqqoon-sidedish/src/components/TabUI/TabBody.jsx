import styled from 'styled-components';
import useFetch from '../../customHooks/useFetch';
import useTab from '../../customHooks/useTab';
import TabList from './TabList';
import TabMain from './TabMain';

const TabBody = () => {
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
      <TabMain tabItemList={tabItemList} />
    </TabBodyBoxDiv>
  );
};

export default TabBody;

const TabBodyBoxDiv = styled.div``;
