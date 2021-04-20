import React, { useEffect, useState } from 'react';
import BestTabList from 'component/BestSidedish/BestTabList/BestTabList';
import BestSidedishList from 'component/BestSidedish/BestSidedishList/BestSidedishList';
import useFetch from 'hooks/useFetch';

const BestSidedish = () => {
  const [bestList, setBestList] = useState(null);
  const [focusedCategory, setFocusedCategory] = useState(null);

  useEffect(() => {
    initBestSidedish(
      `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best`
    );
  }, []);

  const initBestSidedish = async (url) => {
    const response = await fetch(url);
    const data = await response.json();
    const parsedData = parseBestList(data);
    setBestList(parsedData);
    setFocusedCategory(parsedData[0].id);
  };

  return (
    <div>
      {bestList && <BestTabList bestList={bestList} />}
      {focusedCategory && <BestSidedishList focusedCategory={focusedCategory} />}
    </div>
  );
};

const parseBestList = (data) => {
  if (!data || !data.body) return;
  return data.body.map(({ category_id, name }) => {
    return {
      id: category_id,
      title: name,
    };
  });
};

export default BestSidedish;
