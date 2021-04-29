import React, { useState, useEffect } from 'react';
import MediumCard from '../../molecules/MediumCard';
import Span from '../../atoms/Span';
import loadData from '../../../util/loadData';
import Carousel from '../Carousel';
import Icon from '../../atoms/Icon';

const MainDish = props => {

  const [data, setData] = useState([]);

  useEffect(() => {
    loadData(setData, props._dishType);
  }, [props._dishType]);

  const Cards = () => {
    return data.map((card, i) => (
      <MediumCard
        key={i}
        _image={card.image}
        _title={card.title}
        _description={card.description}
        _nPrice={card.n_price}
        _sPrice={card.s_price}
        _badge={card.badge}
        _hash={card.detail_hash}
      ></MediumCard>
    ));
  };


  const Button = type => {
    return (
      <>
        <Icon
          _width="32px"
          _color="#BDBDBD"
          _type={type}
          _margin="130px 25px 0 25px"
        />
      </>
    );

  };

  return (
    <>
      <Span className="_innerTitle" _margin="60px 0 10px 80px">
        {props._innerText}
      </Span>
      <Carousel
        data={data}
        setData={setData}
        visibleSlides={4}
        imageWidth={308}
        imageHeight={479}
        imageMargin={8}
        ButtonLeft={() => {
          return Button('LeftIcon');
        }}
        ButtonRight={() => {
          return Button('RightIcon');
        }}
      >
        <Cards />
      </Carousel>
    </>
  );
};

export default MainDish;
