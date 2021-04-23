import React, { useEffect, useState } from 'react';
import BestTabList from 'component/BestSidedish/BestTabList/BestTabList';
import BestSidedishList from 'component/BestSidedish/BestSidedishList/BestSidedishList';
import useFetch from 'hooks/useFetch';
import styled from 'styled-components';
import { URL } from 'util/data';

const BestSidedish = () => {
  const parseBestList = (json) => {
    setFocusedCategory(json.body[0].category_id);
    const parsedBestList = json.body.map(({ category_id, name }) => ({
      id: category_id,
      title: name,
    }));
    return parsedBestList;
  };

  const { data: bestList, loading } = useFetch({ url: URL.best(), parse: parseBestList });
  const [focusedCategory, setFocusedCategory] = useState(null);

  const handleFocusedCategory = (categoryId) => {
    setFocusedCategory(categoryId);
  };

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
