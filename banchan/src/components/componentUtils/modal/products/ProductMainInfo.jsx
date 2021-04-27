import React from "react";
import styled from "styled-components";
import Label from "../../Label";
import Price from "../../Price";
import { CenterContainer, LabelList } from "../../styles/common";

const ProductMainInfo = ({ product }) => {
  return (
    <MainInfo>
      <ProductTitle>{product.title}</ProductTitle>
      <ProductDescription>{product.description}</ProductDescription>
      <ProductLabelInfo>
        <LabelList>{product.badge && product.badge.map((label) => <Label badgeName={label} />)}</LabelList>
        <Price product={product} />
      </ProductLabelInfo>
    </MainInfo>
  );
};

const MainInfo = styled.div``;

const ProductTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.colors.darkGray};
`;

const ProductDescription = styled.div`
  font-size: ${(props) => props.theme.fontSizes.L};
  color: ${(props) => props.theme.colors.gray};
  margin: 8px 0px;
`;

const ProductLabelInfo = styled(CenterContainer)`
  justify-content: start;
  margin-bottom: 25px;
`;

export default ProductMainInfo;
