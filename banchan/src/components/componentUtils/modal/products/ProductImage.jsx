import React from "react";
import styled from "styled-components";

const ProductImage = ({ imageUrl, thumbnailList }) => {
  return (
    <ProductImageSection>
      <StyledImage src={imageUrl} alt="product-thumbnail" />
      <ThumbnailUL>{thumbnailList}</ThumbnailUL>
    </ProductImageSection>
  );
};

const StyledImage = styled.img`
  width: 392px;
  height: 392px;
  border-radius: ${({ theme }) => theme.borders.radius};
`;

const ProductImageSection = styled.section`
  margin-right: 32px;
`;

const ThumbnailUL = styled.div`
  display: flex;
`;

export default ProductImage;
