import React, { useState, useEffect } from 'react';
import BestSidedishItem from 'component/BestSidedish/BestSidedishList/BestSidedishItem';
import useFetch from 'hooks/useFetch';

const BestSidedishList = ({ focusedCategory }) => {
  const { data, loading } = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best/${focusedCategory}`
  );

  const bestSidedishList = data
    ? data.items.map((item) => <BestSidedishItem key={item.detail_hash} item={item} />)
    : null;
  return loading ? <div>Loading...</div> : <div>{bestSidedishList}</div>;
};

export default BestSidedishList;
