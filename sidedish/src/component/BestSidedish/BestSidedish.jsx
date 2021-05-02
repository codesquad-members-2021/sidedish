import React, { useEffect, useState } from 'react';
import BestTabList from 'component/BestSidedish/BestTabList/BestTabList';
import BestSidedishList from 'component/BestSidedish/BestSidedishList/BestSidedishList';
import useFetch from 'hooks/useFetch';
import styled from 'styled-components';
import { URL } from 'util/data';

const BestSidedish = () => {
  const parseBestList = (json) => {
    const parsedBestList = json.body.map(({ category_id, name }) => ({
      id: category_id,
      title: name,
    }));
    return parsedBestList;
  };

  const initFocusedCategory = (parsedBestList) => {
    setFocusedCategory(parsedBestList[0].id);
  };

  const [focusedCategory, setFocusedCategory] = useState(null);
  const { data: bestList, loading, error } = useFetch({
    url: URL.best(),
    parse: parseBestList,
    initEffect: [initFocusedCategory],
  });

  const handleFocusedCategory = (categoryId) => {
    setFocusedCategory(categoryId);
  };

  if (error) throw Error(error);
  return loading ? (
    <div>Loading...</div>
  ) : (
    <div>
      <Header>후기가 증명하는 베스트 반찬</Header>
      {bestList !== null && (
        <BestTabList
          bestList={bestList}
          focusedCategory={focusedCategory}
          handleFocusedCategory={handleFocusedCategory}
        />
      )}
      {focusedCategory && <BestSidedishList focusedCategory={focusedCategory} />}
    </div>
  );
};

export default BestSidedish;

const Header = styled.div`
  color: #333333, 100%;
  font-size: 24px;
  font-weight: bold;
  margin-top: 5rem;
  margin-bottom: 2rem;
`;
