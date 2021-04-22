import * as S from "../../BestItemsStyles";

const BestItemsTabTitle = () => {
  const titles = [
    "할인특가 세트상품",
    "풍성한 고기 반찬",
    "편리한 반찬세트",
    "간편한 덮밥요리",
    "우리아이 영양반찬",
  ];
  // 선택된 탭 색깔 바꿔야함..분리 필요할듯 마우스 오버시 setstate로 타겟의 색깔 바꾸도록
  return (
    <S.BestItemsTabTitle>
      {titles.map((title, idx) => {
        return (
          <S.BestItemsTabTitleList key={idx}>{title}</S.BestItemsTabTitleList>
        );
      })}
    </S.BestItemsTabTitle>
  );
};

export default BestItemsTabTitle;
