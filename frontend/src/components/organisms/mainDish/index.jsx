import React, { useState, useEffect, useRef } from 'react';
import MediumCard from '../../molecules/MediumCard';

const MainDish = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    const getData = async () => {
      const data = await (
        await fetch(
          'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/soup'
        )
      ).json();
      const dataBody = data.body;
      setData(dataBody);
    };
    getData();
  }, []);

  const Foo = () => {
    return data.map((card, i) => <div key={i}>{card.title}</div>);
  };

  return (
    <div>
      <Foo />
    </div>
  );
};

export default MainDish;
