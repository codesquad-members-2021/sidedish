import * as S from "../../BestItemsStyles";

const BestItemsCardBadge = () => {
  const badges = ["이벤트 특가"]; //뱃지 arr length에 따라.. 스타일도다르게
  return <S.BestItemsCardBadge>{badges[0]}</S.BestItemsCardBadge>;
};

export default BestItemsCardBadge;
