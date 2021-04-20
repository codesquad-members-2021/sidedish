import React, { useState } from 'react';
import BestTabList from 'component/BestSidedish/BestTabList/BestTabList';
import BestSidedishList from 'component/BestSidedish/BestSidedishList/BestSidedishList';
import useFetch from 'hooks/useFetch';

const BestSidedish = () => {
  const { data: bestList, loading } = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best`
  );
  console.log('loading: ', loading);
  const parsedBestList = bestList
    ? bestList.body.map(({ category_id, name }) => {
        return {
          id: category_id,
          title: name,
        };
      })
    : [];
  console.log('parsingValue: ', parsedBestList);
  const [focusedCategory, setFocusedCategory] = useState(bestList && parsedBestList[0].id);

  return loading ? (
    <div>
      <BestTabList bestList={parsedBestList} />
      <BestSidedishList focusedCategory={focusedCategory} />
    </div>
  ) : (
    <span>Loading...</span>
  );
};

export default BestSidedish;

// const data = [
//   { id: 17011200, title: '할인특가 세트상품' },
//   { id: 17011000, title: '풍성한 고기반찬' },
//   { id: 17010200, title: '편리한 반찬세트' },
//   { id: 17010300, title: '간편한 덮밥요리' },
//   { id: 17011400, title: '우리아이 영양반찬' },
// ];
