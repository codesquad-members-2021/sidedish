import styled from 'styled-components';
import { ACTIVE, DEACTIVE } from '../../const';
import Tab from './Tab';

const TabList = ({ bestData, tabIndex, setTabIndex }) => {
  return (
    <TabListDiv>
      {bestData.map(({ category_id, name }, idx) => {
        let tabState = DEACTIVE;
        if (tabIndex === idx) tabState = ACTIVE;
        return (
          <Tab
            idx={idx}
            key={category_id}
            name={name}
            activeState={tabState}
            setTabIndex={setTabIndex}
          />
        );
      })}
    </TabListDiv>
  );
};

export default TabList;

const TabListDiv = styled.div`
  display: flex;
`;
