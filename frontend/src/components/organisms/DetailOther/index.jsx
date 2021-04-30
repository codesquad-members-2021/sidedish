import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import {
  CardStyle,
  WrapCard,
  WrapMain,
  WrapCarousal,
  PageWrapper,
} from './index.style';
import Span from '../../atoms/Span';
import OtherCard from '../../molecules/OtherCard';
import loadData from '../../../util/loadData';
import Icon from '../../atoms/Icon';

const OtherWrapper = styled.div`
  position: relative;
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
  const [page, setPage] = useState(1);
  const [Xaxis, setXaxis] = useState(0);

  const SLIDES = 5;
  let totalPages = Math.ceil(details.length / SLIDES);
  const LENGTH = (imageWidth, margin) => {
    return imageWidth * SLIDES + margin * SLIDES;
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
      if (page === totalPages) return null;
      setStyle('all 0.5s', `translate(${Xaxis - LENGTH(160, 16)}px)`);
      setXaxis(Xaxis - LENGTH(160, 16));
      setPage(page + 1);
    } else {
      if (page === 1) return null;
      setStyle('all 0.5s', `translate(${Xaxis + LENGTH(160, 16)}px)`);
      setXaxis(Xaxis + LENGTH(160, 16));
      setPage(page - 1);
    }
  };

  return (
    <OtherWrapper>
      <TitleStyles>
        <Span className="_tabAct">함께하면 더욱 맛있는 상품</Span>
      </TitleStyles>
      <WrapMain>
        <WrapCarousal>
          <WrapCard _slideWidth={880}>
            <CardStyle ref={directionRef}>
              <Cards />
            </CardStyle>
          </WrapCard>
        </WrapCarousal>
      </WrapMain>
      <PageWrapper>
        <Icon
          moveSlide={moveSlide}
          _width="20px"
          _color="#333333"
          _type="LeftIcon"
        />
        <Span className="_page">
          {page}/{totalPages}
        </Span>
        <Icon
          moveSlide={moveSlide}
          _width="20px"
          _color="#333333"
          _type="RightIcon"
        />
      </PageWrapper>
    </OtherWrapper>
  );
};

export default DetailOther;
