import './styles/style.scss';
import React, { useState, useEffect } from 'react';
import Header from './components/organisms/Header';
import BestDish from './components/organisms/BestDish';
import MainDish from './components/organisms/MainDish';
import ViewMore from './components/organisms/ViewMore';
import ProductDetail from './components/organisms/ProductDetail';
function App() {
  return (
    <div className="App">
      <Header />
      <BestDish _dishType="bestDish" />
      <MainDish _dishType="mainDish" />
      <ViewMore />
      <ProductDetail />
    </div>
  );
}

export default App;
