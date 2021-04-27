import { useState } from "react";
import * as S from "../BestItemsStyles";
import BestItemsCard from "./BestItemsCard/BestItemsCard";
import BestItemsHover from "./BestItemsHover/BestItemsHover";

const BestItemsCardWrapper = ({ initialTabData }) => {
  const [isHover, setHover] = useState(false);

  return (
    <S.BestItemsCardWrapper>
      {initialTabData.items &&
        initialTabData.items.map((item, idx) => {
          // setNewKey(newKey + 1); 밑에 bestItemHover Absolute로 마우스 오버한 아이템 위에 보여줘야함
          return (
            <BestItemsCard key={idx} id={idx + 1} {...{ item }}>
              <BestItemsHover></BestItemsHover>
            </BestItemsCard>
          );
        })}
    </S.BestItemsCardWrapper>
  );
};

export default BestItemsCardWrapper;
