import React, { useState, useEffect } from 'react';
import Span from '../../atoms/Span';
import OtherCard from '../../molecules/OtherCard';
import loadData from '../../../util/loadData';
import Carousel from '../Carousel';
import Icon from '../../atoms/Icon';

const DetailOther = () => {
  alert('hi');
  const [data, setData] = useState([]);

  useEffect(() => {
    loadData(setData, 'detailDish');
    debugger;
  }, []);

  const Cards = () => {
    return data.map((card, i) => (
      <OtherCard
        key={i}
        _image={card.image}
        _description={card.description}
        _point={card.point}
      ></OtherCard>
    ));
  };
  return (
    <div>
      <Cards />
    </div>
  );
};

export default DetailOther;
