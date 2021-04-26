import * as S from "../BestItemsStyles";
import BestItemsCard from "./BestItemsCard/BestItemsCard";
import BestItemsHover from "./BestItemsHover/BestItemsHover";

const BestItemsCardWrapper = ({ bestItemsData }) => {
  return (
    <S.BestItemsCardWrapper>
      {bestItemsData.items &&
        bestItemsData.items.map((item, idx) => {
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
