const Tab = ({ tabList }) => {
  const categories = tabList.map((item, idx) => <li key={idx}>{item}</li>);
  return <ul>{categories}</ul>;
};

export default Tab;
