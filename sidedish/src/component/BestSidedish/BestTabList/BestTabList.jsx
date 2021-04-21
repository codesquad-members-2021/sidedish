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
      <Header>후기가 증명하는 베스트 반찬</Header>
      <TabList>{bestTabList}</TabList>
    </>
  );
};

export default BestTabList;

const Header = styled.div`
  color: #333333, 100%;
  font-size: 24px;
  font-weight: bold;
  margin-top: 5rem;
`;

const TabList = styled.div`
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1.6fr;
  margin-top: 2rem;
  width: 1280px;
`;
