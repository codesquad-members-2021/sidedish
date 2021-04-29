import React, { useState } from "react";
import TextButton from "../../button/TextButton";
import { CenterContainer, ProductTotalTitle } from "../../styles/common";
import ProductMainInfo from "./ProductMainInfo";
import ProductBuyInfo from "./ProductBuyInfo";
import ProductCount from "./ProductCount";
import styled from "styled-components";

const ProductInformation = ({ product }) => {
  let initialPrice = Number(product.s_price.replace(/[^0-9]/g, ""));

  const [totalPrice, setTotalPrice] = useState(initialPrice);

  const getTotalPrice = (count) => setTotalPrice(initialPrice * count);

  return (
    <Information>
      <ProductMainInfo product={product} />
      <ProductBuyInfo product={product} />
      <ProductCount getTotalPrice={getTotalPrice} />
      <ProductPrice>
        <ProductTotalTitle>총 주문금액</ProductTotalTitle>
        <ProductTotalMoney>{totalPrice}원</ProductTotalMoney>
      </ProductPrice>
      <TextButton type="ORDER" />
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
  color: ${({ theme }) => theme.colors.darkGray};
`;
