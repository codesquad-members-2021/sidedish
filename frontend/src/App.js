import './styles/style.scss';
import React, { useState, useEffect } from 'react';
import Header from './components/organisms/Header';
import BestDish from './components/organisms/BestDish';
import MainDish from './components/organisms/MainDish';
import ViewMore from './components/organisms/ViewMore';
function App() {
  // const [bestDish, setBestDish] = useState([]);

  return (
    <div className="App">
      <Header />

      <BestDish />
      {/* <MainDish /> */}
      <More />

      
      {/* <BestDish /> */}

      {/* {bestDish.map(({ category_id, name, items }) => {
        return (
          <div key={category_id}>
            {name}
            {items.map(({ detail_hash, image, alt, title }) => {
              return (
                <div key={detail_hash}>
                  <Image src={image}></Image>
                  <div>{title}</div>
                </div>
              );
            })}
          </div>
        );
      })} */}
    </div>
  );
}

export default App;
