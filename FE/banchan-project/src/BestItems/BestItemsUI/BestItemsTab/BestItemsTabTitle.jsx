import { useState } from "react";
import * as S from "../../BestItemsStyles";

const URL = "/dish/best";
const getBestItemsData = async id => {
  const rawData = await fetch(`${URL}/${id}`).then(res => res.json());
  return rawData;
};

const BestItemsTabTitle = ({ titleList, setBestItemsData }) => {
  const [activeTabId, setActivateTabId] = useState(1);

  const onClick = e => {
    const targetId = +e.target.id;
    setActivateTabId(targetId); //id숫자로 바꾸기
    getBestItemsData(targetId).then(res => {
      setBestItemsData(res);
    });
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
