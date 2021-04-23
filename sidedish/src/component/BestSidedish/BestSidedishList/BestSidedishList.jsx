import React, { useState, useEffect } from 'react';
import useFetch from 'hooks/useFetch';
import styled from 'styled-components';
import DishItem from 'component/DishItem/DishItem';
import { URL } from 'util/data';

const BestSidedishList = ({ focusedCategory }) => {
  const { data, loading } = useFetch({ url: URL.best(focusedCategory), target: [focusedCategory] });

  const bestSidedishList = data
    ? data.items.map((item) => <DishItem key={item.detail_hash} item={item} size="L" />)
    : null;
  return loading ? (
    <div>Loading...</div>
  ) : (
    <BestListContainer>{bestSidedishList}</BestListContainer>
  );
};

export default BestSidedishList;

const BestListContainer = styled.div`
  min-width: 1280px;
  display: flex;
  justify-content: space-evenly;
  background: #eef4fa;
  padding: 40px 0;
`;
