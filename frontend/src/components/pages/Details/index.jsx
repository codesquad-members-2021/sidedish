import React, { useState, useEffect } from "react";
import styled from "styled-components";
import Image from "../../atoms/Image";
import loadData from "../../../util/loadData";
import InfoImages from "../../molecules/InfoImages";
import InfoGeneral from "../../molecules/InfoGeneral";
import InfoProduct from "../../molecules/InfoProduct";
import InfoQuantity from "../../molecules/InfoQuantity";
import Button from "../../atoms/Button";

const Details = ({ ...props }) => {
  const [detailDish, setDetailDish] = useState([]);
  const [topImage, setTopImage] = useState();

  useEffect(() => {
    loadData(setDetailDish, props._dishType, props._hash);
  }, [props._dishType, props._hash]);

  const DetailWrapper = styled.div`
    display: flex;
  `;

  useEffect(() => {
    setTopImage(detailDish.top_image);
  }, [detailDish.top_image]);

  const ImageWrapper = styled.div`
    display: flex;
    flex-direction: column;
    margin-right: 32px;
  `;
  const ContentWrapper = styled.div`
    display: flex;
    flex-direction: column;
    width: 440px;
  `;

  const TopImage = () => {
    return <Image src={topImage} _width="392px" />;
  };

  return (
    <DetailWrapper>
      <ImageWrapper>
        <TopImage />
        <InfoImages
          setTopImage={setTopImage}
          _thumb_images={detailDish.thumb_images}
        />
      </ImageWrapper>

      <ContentWrapper>
        <InfoProduct
          title="미노리키친]규동 250g"
          description={detailDish.product_description}
          badge="['이벤트특가','론칭특가']"
          _sPrice={detailDish.special_price}
          _nPrice={detailDish.normal_price}
        ></InfoProduct>
        <InfoGeneral
          point={detailDish.point}
          delivery_info={detailDish.delivery_info}
          delivery_fee={detailDish.delivery_fee}
        ></InfoGeneral>
        <InfoQuantity t_price={detailDish.special_price}></InfoQuantity>
        <Button _default />
      </ContentWrapper>
    </DetailWrapper>
  );
};

export default Details;
