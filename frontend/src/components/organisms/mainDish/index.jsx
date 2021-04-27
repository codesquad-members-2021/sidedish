import React, { useState, useEffect, useRef } from 'react';
import { CardStyle, WrapCard, WrapMain, WrapCarousal } from './index.style';
import MediumCard from '../../molecules/MediumCard';
import Icon from '../../atoms/Icon';
import UseFetch from '../../../util/useFetch';

const MainDish = props => {
  const directionRef = useRef(false);
  const [data, setData] = useState([]);

  const SLIDES = 4;
  const LENGTH = (imageWidth, margin) => {
    return imageWidth * SLIDES + margin * (SLIDES + 1);
  };

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
        _hash={card.detail_hash}
      ></MediumCard>
    ));
  };

  const setStyle = (duration, move) => {
    directionRef.current.style.transition = duration;
    directionRef.current.style.transform = move;
  };

  const moveSlide = type => {
    if (type === 'RightIcon') {
      setStyle('all 0.5s', `translate(-${LENGTH(308, 16)}px)`);
    } else {
      setStyle('all 0.5s', `translate(${LENGTH(308, 16)}px)`);
    }
  };

  const onTransitionEnd = type => {
    if (type === 'RightIcon') {
      setData(data.slice(SLIDES).concat(data.slice(0, SLIDES)));
    } else {
      setData(data.slice(-SLIDES).concat(data.slice(0, -SLIDES)));
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
            <CardStyle onTransitionEnd={onTransitionEnd} ref={directionRef}>
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
