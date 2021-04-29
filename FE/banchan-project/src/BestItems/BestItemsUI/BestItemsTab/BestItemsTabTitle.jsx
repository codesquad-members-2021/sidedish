import { useState } from "react";
import * as S from "../../BestItemsStyles";

const BestItemsTabTitle = ({ titleList, setBestItemsData, URL }) => {
  const [activeTabId, setActivateTabId] = useState(1);
  const getBestItemsData = async id => {
    const rawData = await fetch(`${URL}/${id}`).then(res => res.json());
    return rawData;
  };
  const onClick = e => {
    const targetId = +e.target.id;
    setActivateTabId(targetId);
    getBestItemsData(targetId).then(res => {
      setBestItemsData(res);
    });
  };

  const isActive = tabId => {
    return activeTabId === tabId + 1;
  };

  return (
    <S.BestItemsTabTitle>
      {titleList.map((title, idx) => {
        return (
          <S.BestItemsTabTitleList
            active={isActive(idx)}
            key={idx}
            id={idx + 1}
            onClick={onClick}
          >
            {title}
          </S.BestItemsTabTitleList>
        );
      })}
    </S.BestItemsTabTitle>
  );
};

export default BestItemsTabTitle;
