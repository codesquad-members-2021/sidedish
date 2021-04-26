import React, { useState } from "react";
import styled from "styled-components";
import Price from "../Price";
import { LabelList, StyledDescription, StyledTitle } from "../styles/common";
import TextButton from "../button/TextButton";
import ProductImage from "./products/ProductImage";
import ProductInformation from "./products/ProductInformation";

const ModalCard = ({ product }) => {
  const [count, setCount] = useState(1);
  const [productImg, setProductImg] = useState(product.top_image);

  const thumbnailList = [...new Array(5)].map((i, index) =>
    index >= product.thumb_images.length ? (
      <BlackThumbnail />
    ) : (
      <Thumbnail src={product.thumb_images[index]} onClick={() => setProductImg(product.thumb_images[index])} />
    )
  );

  const increaseCount = () => setCount(count + 1);

  const getTotalPrice = (str) => Number(str.replace(/[^0-9]/g, "")) * count;

  const decreaseCount = () => count > 1 && setCount(count - 1);

  return (
    <CardContent>
      <ProductImage imageUrl={product.top_image} thumbnailList={thumbnailList} />
      {/* <ProductImageSection>
        <img src={product.top_image} alt="product-thumbnail" />
        <ThumbnailUL>
          {product.thumb_images.map((imageUrl) => (
            <li>
              <Thumbnail src={imageUrl} />
            </li>
          ))}
        </ThumbnailUL>
      </ProductImageSection> */}
      <ProductInformation {...{ product, getTotalPrice, increaseCount, decreaseCount, count }} />
      {/* <Information>
        <ProductMainInfo>
          <StyledTitle>{product.title}</StyledTitle>
          <StyledDescription>{product.description}</StyledDescription>
          <div>
            <LabelList />
            <Price product={product} />
          </div>
        </ProductMainInfo>
        <ProductBuyInfo>
          <div>적립금: {product.point}</div>
          <div>배송정보: {product.delivery_info}</div>
          <div>배송비 : {product.delivery_fee}</div>
        </ProductBuyInfo>
        <ProductCount></ProductCount>
        <ProductPrice>여기는 총 주문 금액이 들어갈 예정입니다. 카운트를 같이 계산해서..</ProductPrice>
        <TextButton type="ORDER"></TextButton>
      </Information> */}
    </CardContent>
  );
};

export default ModalCard;

const CardContent = styled.div`
  background: white;
  width: 960px;
  height: 1076px;
  padding: 48px;
  display: flex;
`;

// const CardContent = styled.div`
//   background: white;
//   width: 960px;
//   height: 1076px;
// `;

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
// const ThumbnailUL = styled.div`
//   display: flex;
// `;

// const Thumbnail = styled.img`
//   width: 100px;
//   height: 100px;
// `;

// const ProductImageSection = styled.section`
//   margin-right: 32px;
// `;

// const Information = styled.div``;

// const ProductMainInfo = styled.div``;

// const ProductBuyInfo = styled.div``;

// const ProductCount = styled.div``;

// const ProductPrice = styled.div``;
