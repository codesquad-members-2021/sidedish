import React, { useState } from "react";
import styled from "styled-components";
// import Price from "../Price";
// import { LabelList, StyledDescription, StyledTitle } from "../styles/common";
// import TextButton from "../button/TextButton";
import ProductImage from "./products/ProductImage";
import ProductInformation from "./products/ProductInformation";

const ModalCard = ({ product }) => {
  const [count, setCount] = useState(1);
  const [productImg, setProductImg] = useState(product.top_image);

  const thumbnailList = [...Array(5)].map((item, index) =>
    index >= product.thumb_images.length ? (
      <BlackThumbnail />
    ) : (
      <Thumbnail
        src={product.thumb_images[index]}
        onClick={() => {
          setProductImg(product.thumb_images[index]);
        }}
      />
    )
  );

  const increaseCount = () => setCount(count + 1);

  const getTotalPrice = (str) => Number(str.replace(/[^0-9]/g, "")) * count;

  const decreaseCount = () => count > 1 && setCount(count - 1);

  return (
    <CardContent>
      <ProductImage imageUrl={productImg} thumbnailList={thumbnailList} />
      <ProductInformation {...{ product, getTotalPrice, increaseCount, decreaseCount, count }} />
    </CardContent>
  );
};

export default ModalCard;

const CardContent = styled.div`
  background: white;
  // width: 960px;
  width: fit-content;
  height: 1076px;
  padding: 48px;
  display: flex;
`;

const BlackThumbnail = styled.div`
  width: 72px;
  height: 72px;
  background: #f5f5f7;
  border-radius: 5px;
  margin: 8px 8px 8px 0;
`;

const Thumbnail = styled.img`
  width: 72px;
  height: 72px;
  border-radius: 5px;
  margin: 8px 8px 8px 0;
  cursor: pointer;
`;
