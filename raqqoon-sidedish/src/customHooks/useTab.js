import { useState } from 'react';

const useTab = (tabIdx, tabItemList) => {
  const [tabIndex, setTabIndex] = useState(tabIdx);

  return {
    tabItemList: tabItemList[tabIndex] || [],
    tabIndex: tabIndex,
    setTabIndex: setTabIndex,
  };
};

export default useTab;
