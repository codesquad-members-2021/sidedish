import React, { useState, useEffect, useRef } from 'react';
import { CardStyle, WrapCard, WrapMain, WrapCarousal } from './index.style';
import MediumCard from '../../molecules/MediumCard';
import Icon from '../../atoms/Icon';
import UseFetch from '../../../util/useFetch';

const MainDish = props => {
  const directionRef = useRef(false);
  const [data, setData] = useState([]);

  UseFetch(setData, props._dishType);

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
      ></MediumCard>
    ));
  };

  const moveSlide = type => {
    if (type === 'RightIcon') {
      directionRef.current.style.transition = 'all 0.5s';
      directionRef.current.style.transform = 'translate(-1312px)';
    } else {
      directionRef.current.style.transition = 'all 0.5s';
      directionRef.current.style.transform = 'translate(1312px)';
    }
  };

  const render = type => {
    if (type === 'RightIcon') {
      setData(data.slice(4).concat(data.slice(0, 4)));
    } else {
      setData(data.slice(-4).concat(data.slice(0, -4)));
    }
    directionRef.current.style.transform = 'translate(0)';
    directionRef.current.style.transition = 'none';
  };

  return (
    <>
      <WrapMain>
        <WrapCarousal>
          <Icon
            moveSlide={moveSlide}
            _width="32px"
            _color="#BDBDBD"
            _type="LeftIcon"
          />
          <WrapCard>
            <CardStyle onTransitionEnd={render} ref={directionRef}>
              <Cards />
            </CardStyle>
          </WrapCard>
          <Icon
            moveSlide={moveSlide}
            _width="32px"
            _color="#BDBDBD"
            _type="RightIcon"
          />
        </WrapCarousal>
      </WrapMain>
    </>
  );
};

export default MainDish;
