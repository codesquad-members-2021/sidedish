import React from 'react';
import Header from '../organisms/Header';
import BestDish from '../organisms/BestDish';
import MainDish from '../organisms/MainDish';
import ViewMore from '../organisms/ViewMore';

const Home = () => {
  return (
    <div>
      <Header />
      <BestDish _dishType="bestDish" />
      <MainDish _dishType="mainDish" />
      <ViewMore />
    </div>
  );
};

export default Home;
