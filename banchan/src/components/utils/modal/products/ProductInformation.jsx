import React from "react";
import TextButton from "../../button/TextButton";
import Label from "../../Label";
import Price from "../../Price";
import { CenterContainer, LabelList } from "../../styles/common";
import ProductMainInfo from "./ProductMainInfo";
import ProductBuyInfo from "./ProductBuyInfo";
import ProductCount from "./ProductCount";
import styled from "styled-components";

const ProductInformation = ({ product, getTotalPrice, increaseCount, decreaseCount, count }) => {
  return (
    <Information>
      <ProductMainInfo product={product} />
      {/* <ProductTitle>{product.title}</ProductTitle>
          <ProductDescription>{product.description}</ProductDescription>
          <ProductLabelInfo>
            <LabelList>
              {product.badge &&
                product.badge.map((e) => <Label badgeName={e} />)}
            </LabelList>
            <Price product={product} />
          </ProductLabelInfo> */}
      {/* </ProductMainInfo> */}
      <ProductBuyInfo product={product}>
        {/* <ProductBuyInfoLi>
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
          </ProductBuyInfoLi> */}
      </ProductBuyInfo>
      <ProductCount {...{ count, increaseCount, decreaseCount }}>
        {/* <ProductBuyInfoTitle>수량</ProductBuyInfoTitle>
        <ProductBuyCountDiv>
          <CountBox>{count}</CountBox>
          <div>
            <IncDecBtns>
              <IconButton type="UP" fn={increaseCount} />
            </IncDecBtns>
            <IncDecBtns>
              <IconButton type="DOWN" fn={decreaseCount} />
            </IncDecBtns>
          </div>
        </ProductBuyCountDiv> */}
      </ProductCount>
      <ProductPrice>
        <ProductTotalTitle>총 주문금액</ProductTotalTitle>
        <ProductTotalMoney>{getTotalPrice(product.prices[0])}</ProductTotalMoney>
      </ProductPrice>
      <TextButton type="ORDER"></TextButton>
    </Information>
    //     <Information>
    //     <ProductMainInfo>
    //       <StyledTitle>{product.title}</StyledTitle>
    //       <StyledDescription>{product.description}</StyledDescription>
    //       <div>
    //         <LabelList />
    //         <Price product={product} />
    //       </div>
    //     </ProductMainInfo>
    //     <ProductBuyInfo>
    //       <div>적립금: {product.point}</div>
    //       <div>배송정보: {product.delivery_info}</div>
    //       <div>배송비 : {product.delivery_fee}</div>
    //     </ProductBuyInfo>
    //     <ProductCount></ProductCount>
    //     <ProductPrice>여기는 총 주문 금액이 들어갈 예정입니다. 카운트를 같이 계산해서..</ProductPrice>
    //     <TextButton type="ORDER"></TextButton>
    //   </Information>
  );
};

export default ProductInformation;

const Information = styled.div``;

const ProductPrice = styled(CenterContainer)`
  padding: 32px 0;
  justify-content: flex-end;
`;

const ProductTotalTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.colors.darkGray};
  margin-right: 24px;
`;

const ProductTotalMoney = styled.div`
  font-size: 32px;
  font-weight: bold;
  color: ${(props) => props.theme.colors.darkGray};
`;
