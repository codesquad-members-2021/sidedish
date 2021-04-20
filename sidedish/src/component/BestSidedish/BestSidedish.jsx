import React, { useState } from 'react';
import BestTabList from 'component/BestTabList/BestTabList';

const BestSidedish = () => {
  const [bestList, setBestList] = useState(data);
  return (
    <div>
      <BestTabList bestList={bestList} />
    </div>
  );
};

export default BestSidedish;

const data = [
  { id: 17011200, title: '할인특가 세트상품' },
  { id: 17011000, title: '풍성한 고기반찬' },
  { id: 17010200, title: '편리한 반찬세트' },
  { id: 17010300, title: '간편한 덮밥요리' },
  { id: 17011400, title: '우리아이 영양반찬' },
];
