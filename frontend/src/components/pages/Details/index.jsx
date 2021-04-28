import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import Image from '../../atoms/Image';
import loadData from '../../../util/loadData';
import InfoImages from '../../molecules/InfoImages';
import InfoGeneral from '../../molecules/InfoGeneral';
import InfoPrice from '../../molecules/InfoPrice';
import InfoProduct from '../../molecules/InfoProduct';
import InfoQuantity from '../../molecules/InfoQuantity';

const Details = ({ ...props }) => {
  const [detailDish, setDetailDish] = useState([]);
  const [topImage, setTopImage] = useState();

  useEffect(() => {
    loadData(setDetailDish, props._dishType, props._hash);
  }, []);

  useEffect(() => {
    setTopImage(detailDish.top_image);
  }, [detailDish.top_image]);

  const ImageWrapper = styled.div`
    display: flex;
    flex-direction: column;
    margin: 48px;
  `;
  const ContentWrapper = styled.div`
    display: flex;
    flex-direction: column;
  `;

  const TopImage = () => {
    return <Image src={topImage} _width="392px" />;
  };

  return (
    <>
      <ImageWrapper>
        <TopImage />
        <InfoImages
          setTopImage={setTopImage}
          _thumb_images={detailDish.thumb_images}
        />
      </ImageWrapper>
      {/* <ContentWrapper>
        <InfoGeneral></InfoGeneral>
        <InfoPrice></InfoPrice>
        <InfoProduct></InfoProduct>
        <InfoQuantity></InfoQuantity>
      </ContentWrapper> */}
    </>
  );
};

export default Details;
