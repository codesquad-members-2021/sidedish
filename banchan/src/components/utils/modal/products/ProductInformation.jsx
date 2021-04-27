import React from "react";
import TextButton from "../../button/TextButton";
import { CenterContainer, ProductTotalTitle } from "../../styles/common";
import ProductMainInfo from "./ProductMainInfo";
import ProductBuyInfo from "./ProductBuyInfo";
import ProductCount from "./ProductCount";
import styled from "styled-components";

const ProductInformation = ({ product, getTotalPrice, increaseCount, decreaseCount, count }) => {
  return (
    <Information>
      <ProductMainInfo product={product} />
      <ProductBuyInfo product={product}></ProductBuyInfo>
      <ProductCount {...{ count, increaseCount, decreaseCount }}></ProductCount>
      <ProductPrice>
        <ProductTotalTitle>총 주문금액</ProductTotalTitle>
        <ProductTotalMoney>{getTotalPrice(product.prices[0])}</ProductTotalMoney>
      </ProductPrice>
      <TextButton type="ORDER"></TextButton>
    </Information>
  );
};

export default ProductInformation;

const Information = styled.div``;

const ProductPrice = styled(CenterContainer)`
  padding: 32px 0;
  justify-content: flex-end;
`;

const ProductTotalMoney = styled.div`
  font-size: 32px;
  font-weight: bold;
  color: ${(props) => props.theme.colors.darkGray};
`;
