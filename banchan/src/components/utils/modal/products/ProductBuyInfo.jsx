import React from "react";
import styled from "styled-components";

const ProductBuyInfo = ({ product }) => {
  return (
    <BuyInfo>
      <ProductBuyInfoLi>
        <ProductBuyInfoTitle>적립금</ProductBuyInfoTitle>
        {product.point}
      </ProductBuyInfoLi>
      <ProductBuyInfoLi>
        <ProductBuyInfoTitle>배송정보</ProductBuyInfoTitle>
        {product.delivery_info}
      </ProductBuyInfoLi>
      <ProductBuyInfoLi>
        <ProductBuyInfoTitle>배송비</ProductBuyInfoTitle>
        {product.delivery_fee}
      </ProductBuyInfoLi>
    </BuyInfo>
  );
};

const BuyInfo = styled.ul`
  border-top: 1px solid #e0e0e0;
  border-bottom: 1px solid #e0e0e0;
  padding: 25px 0;
`;

const ProductBuyInfoLi = styled.li`
  list-style: none;
  display: flex;
  font-size: ${(props) => props.theme.fontSizes.S};
`;

const ProductBuyInfoTitle = styled.div`
  min-width: 60px;
  margin-right: 16px;
  color: ${(props) => props.theme.colors.gray};
`;

export default ProductBuyInfo;
