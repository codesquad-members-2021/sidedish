import React, { useState, useEffect } from 'react';
import BestSidedishItem from 'component/BestSidedish/BestSidedishList/BestSidedishItem';
import useFetch from 'hooks/useFetch';
import styled from 'styled-components';

const BestSidedishList = ({ focusedCategory }) => {
  const { data, loading } = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best/${focusedCategory}`,
    focusedCategory
  );

  const bestSidedishList = data
    ? data.items.map((item) => <BestSidedishItem key={item.detail_hash} item={item} />)
    : null;
  return loading ? (
    <div>Loading...</div>
  ) : (
    <BestListContainer>{bestSidedishList}</BestListContainer>
  );
};

export default BestSidedishList;

const BestListContainer = styled.div`
  display: flex;
  justify-content: space-evenly;
  background: #eef4fa;
  width: 1280px;
  height: 620px;
  padding: 40px 0;
`;
