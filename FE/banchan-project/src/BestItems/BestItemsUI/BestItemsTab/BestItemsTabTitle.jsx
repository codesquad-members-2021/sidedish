import { useState } from "react";
import * as S from "../../BestItemsStyles";

const BestItemsTabTitle = ({ titleList }) => {
  const [activeTabId, setActivateTabId] = useState(1);
  const onClick = e => {
    setActivateTabId(+e.target.id); //id숫자로 바꾸기
    //fetch 해야함
  };

  const isActive = tabId => {
    return activeTabId === tabId;
  };

  return (
    <S.BestItemsTabTitle>
      {titleList.map((title, idx) => {
        return (
          <S.BestItemsTabTitleList
            active={isActive(idx + 1)}
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
