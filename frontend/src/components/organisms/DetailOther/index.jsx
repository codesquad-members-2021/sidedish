import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import Span from '../../atoms/Span';
import OtherCard from '../../molecules/OtherCard';
import loadData from '../../../util/loadData';
import Carousel from '../Carousel';
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
  const [details, setDetails] = useState([]);

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
  const Button = type => {
    return (
      <>
        <Icon
          _width="12px"
          _height="12px"
          _color="#333333"
          _type={type}
          // _margin="130px 25px 0 25px"
        />
      </>
    );
  };

  return (
    <OtherWrapper>
      <TitleStyles>
        <Span className="_tabAct">함께하면 더욱 맛있는 상품</Span>
      </TitleStyles>
      <Carousel
        data={details}
        setData={setDetails}
        visibleSlides={5}
        imageWidth={160}
        imageHeight={160}
        imageMargin={16}
        ButtonLeft={() => {
          return Button('LeftIcon');
        }}
        ButtonRight={() => {
          return Button('RightIcon');
        }}
      >
        <Cards />
      </Carousel>
    </OtherWrapper>
  );
};

export default DetailOther;
