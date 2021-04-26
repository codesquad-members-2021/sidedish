import React from 'react';
import styled from 'styled-components';
import Tab from 'component/Header/Tab';

const TabList = ({ tabList }) => {
  const categories = tabList.map((item, idx) => <Tab key={idx} item={item} />);
  return <TabListStyle>{categories}</TabListStyle>;
};

export default TabList;

const TabListStyle = styled.ul`
  margin: 0;
  width: 400px;
  padding: 0px;
  display: flex;
  list-style: none;
  justify-content: space-between;
`;
