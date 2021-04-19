import styled from 'styled-components';

const TabList = styled.ul`
  width: 400px;
  padding: 0px;
  display: flex;
  list-style: none;
  justify-content: space-between;
`;

const Tab = ({ tabList }) => {
  const categories = tabList.map((item, idx) => <li key={idx}>{item}</li>);
  return <TabList>{categories}</TabList>;
};

export default Tab;
