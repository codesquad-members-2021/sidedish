import React from 'react';

const BestTabList = ({ bestList }) => {
  const bestTabList = bestList.map((item) => <div key={item.id}>{item.title}</div>);

  return <div>{bestTabList}</div>;
};

export default BestTabList;
