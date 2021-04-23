import * as S from "../BestItemsStyles";
import BestItemsCard from "./BestItemsCard/BestItemsCard";

const BestItemsCardWrapper = ({ initialTabData }) => {
  return (
    <S.BestItemsCardWrapper>
      {initialTabData.items ? (
        initialTabData.items.map((item, idx) => {
          return (
            <BestItemsCard key={idx} id={idx + 1} {...{ item }}></BestItemsCard>
          );
        })
      ) : (
        <BestItemsCard></BestItemsCard>
      )}
    </S.BestItemsCardWrapper>
  );
};

export default BestItemsCardWrapper;
