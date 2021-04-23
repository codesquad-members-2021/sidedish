import styled from 'styled-components';
import Price from '../utils/Price';
import TextButton from '../utils/button/TextButton';
import {
  LabelList,
  StyledDescription,
  StyledTitle,
} from '../utils/styles/common';

const Modal = ({ product }) => {
  return (
    <ModalCard>
      <ProductImage>
        <img src="" alt="product-thumbnail" />
        <ul>
          <li className="product-image"></li>
          <li className="product-image"></li>
          <li className="product-image"></li>
          <li className="product-image"></li>
          <li className="product-image"></li>
        </ul>
      </ProductImage>
      <Information>
        <ProductMainInfo>
          <StyledTitle>{product.title}</StyledTitle>
          <StyledDescription>{product.description}</StyledDescription>
          <div>
            <LabelList />
            <Price product={product} />
          </div>
        </ProductMainInfo>
        <ProductBuyInfo></ProductBuyInfo>
        <ProductCount></ProductCount>
        <ProductPrice></ProductPrice>
        <TextButton type="ORDER"></TextButton>
      </Information>
    </ModalCard>
  );
};

const ModalCard = styled.div`
  background: white;
  width: 960px;
  height: 1076px;
`;

const ProductImage = styled.div``;

const Information = styled.div``;

const ProductMainInfo = styled.div``;

// const LabelList = styled.div``;

const ProductBuyInfo = styled.div``;

const ProductCount = styled.div``;

const ProductPrice = styled.div``;

export default Modal;
