import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import { CardStyle, WrapCard, WrapMain, WrapCarousal } from './index.style';
import Span from '../../atoms/Span';
import OtherCard from '../../molecules/OtherCard';
import loadData from '../../../util/loadData';
import Icon from '../../atoms/Icon';

const OtherWrapper = styled.div`
  display: flex;
  flex-direction: column;
  width: 960px;
  height: 396px;
  background: #f5f5f7;
  border-radius: 0px 0px 5px 5px;
`;

const TitleStyles = styled.div`
  padding: 48px 0 0 48px;
`;

const DetailOther = props => {
  const directionRef = useRef(false);
  const [details, setDetails] = useState([]);

  const SLIDES = 5;
  const LENGTH = (imageWidth, margin) => {
    return imageWidth * SLIDES + margin * (SLIDES + 4);
  };

  useEffect(() => {
    loadData(setDetails, props._dishType);
  }, [props._dishType]);

  const Cards = () => {
    return details.map((card, i) => (
      <OtherCard
        key={i}
        _image={card.image}
        _title={card.title}
        _price={card.s_price}
      ></OtherCard>
    ));
  };

  const setStyle = (duration, move) => {
    directionRef.current.style.transition = duration;
    directionRef.current.style.transform = move;
  };

  const moveSlide = type => {
    if (type === 'RightIcon') {
      setStyle('all 0.5s', `translate(-${LENGTH(160, 16)}px)`);
    } else {
      setStyle('all 0.5s', `translate(${LENGTH(160, 16)}px)`);
    }
  };

  const onTransitionEnd = type => {
    if (type === 'RightIcon') {
      setDetails(details.slice(SLIDES).concat(details.slice(0, SLIDES)));
    } else {
      setDetails(details.slice(-SLIDES).concat(details.slice(0, -SLIDES)));
    }
    directionRef.current.style.transform = 'translate(0)';
    directionRef.current.style.transition = 'none';
  };

  const Button = type => {
    return (
      <>
        <Icon
          _width="12px"
          _height="12px"
          _color="#333333"
          _type={type}
          moveSlide={moveSlide}
        />
      </>
    );
  };

  return (
    <OtherWrapper>
      <TitleStyles>
        <Span className="_tabAct">함께하면 더욱 맛있는 상품</Span>
      </TitleStyles>
      <WrapMain>
        <WrapCarousal>
          <Button type={'LeftIcon'} />
          <WrapCard _slideWidth={944}>
            <CardStyle onTransitionEnd={onTransitionEnd} ref={directionRef}>
              <Cards />
            </CardStyle>
          </WrapCard>
          <Button type={'RightIcon'} />
        </WrapCarousal>
      </WrapMain>
    </OtherWrapper>
  );
};

export default DetailOther;
