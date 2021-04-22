import React from 'react';
import BestTab from 'component/BestSidedish/BestTabList/BestTab';
import styled from 'styled-components';

const BestTabList = ({ bestList, focusedCategory, handleFocusedCategory }) => {
  const bestTabList = bestList.map(({ id, title }) => (
    <BestTab
      key={id}
      id={id}
      title={title}
      focusedCategory={focusedCategory}
      handleFocusedCategory={handleFocusedCategory}
    />
  ));

  return (
    <>
      <TabList>{bestTabList}</TabList>
    </>
  );
};

export default BestTabList;

const TabList = styled.div`
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1.6fr;
  min-width: 1320px;
`;
