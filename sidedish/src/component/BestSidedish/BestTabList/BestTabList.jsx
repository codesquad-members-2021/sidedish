import React from 'react';
import BestTab from 'component/BestSidedish/BestTabList/BestTab';

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

  return <div>{bestTabList}</div>;
};

export default BestTabList;
