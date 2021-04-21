import * as S from "../../BestItemsStyles";

const BestItemsTabTitle = () => {
  const titles = [
    "할인특가 세트상품",
    "풍성한 고기 반찬",
    "편리한 반찬세트",
    "간편한 덮밥요리",
    "우리아이 영양반찬",
  ];

  return (
    <S.BestItemsTabTitle>
      {titles.map((title, idx) => {
        return <li key={idx}>{title}</li>;
      })}
    </S.BestItemsTabTitle>
  );
};

export default BestItemsTabTitle;
