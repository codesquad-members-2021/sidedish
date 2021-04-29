import * as S from "../BestItemsStyles";
import BestItemsCard from "./BestItemsCard/BestItemsCard";

const BestItemsCardWrapper = ({ bestItemsData, handleClickCard }) => {
  return (
    <S.BestItemsCardWrapper>
      {bestItemsData.items &&
        bestItemsData.items
          .sort(() => Math.random() - 0.5) //배열 랜덤 정렬
          .map((item, idx) => {
            return (
              <BestItemsCard
                key={idx}
                id={idx + 1}
                {...{ item, handleClickCard }}
              ></BestItemsCard>
            );
          })}
    </S.BestItemsCardWrapper>
  );
};

export default BestItemsCardWrapper;
