import { useState, useEffect } from "react";
import * as S from "../../BestItemsStyles";

const BestItemsTabTitle = ({ titleList }) => {
  // 선택된 탭 색깔 바꿔야함..분리 필요할듯 마우스 오버시 setstate로 타겟의 색깔 바꾸도록
  return (
    <S.BestItemsTabTitle>
      {titleList.map((title, idx) => {
        return (
          <S.BestItemsTabTitleList key={idx} id={idx + 1}>
            {title}
          </S.BestItemsTabTitleList>
        );
      })}
    </S.BestItemsTabTitle>
  );
};

export default BestItemsTabTitle;
