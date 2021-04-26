import React from "react";
import styled from "styled-components";

const ProductImage = ({ imageUrl, thumbnailList }) => {
  console.log(thumbnailList);
  return (
    <ProductImageSection>
      <img src={imageUrl} alt="product-thumbnail" />
      <ThumbnailUL>
        {thumbnailList}
        {/* {thumbnailList.map((thumbnailUrl) => (
          <li>
            <Thumbnail src={thumbnailUrl} />
          </li>
        ))} */}
      </ThumbnailUL>
    </ProductImageSection>
  );
};

const ProductImageSection = styled.section`
  margin-right: 32px;
`;

const ThumbnailUL = styled.div`
  display: flex;
`;

const Thumbnail = styled.img`
  width: 100px;
  height: 100px;
`;

export default ProductImage;
