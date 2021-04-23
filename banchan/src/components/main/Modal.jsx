import styled from 'styled-components';
import Price from '../utils/Price';
import TextButton from '../utils/button/TextButton';
import {
  LabelList,
  StyledDescription,
  StyledTitle,
} from '../utils/styles/common';

const Modal = ({ product }) => {
  console.log(product);
  return (
    <ModalCard>
      <ProductImage>
        <img src={product.top_image} alt="product-thumbnail" />
        <ThumbnailUL>
          {product.thumb_images.map((i) => (
            <li>
              <Thumbnail src={i} />
            </li>
          ))}
        </ThumbnailUL>
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
        <ProductBuyInfo>
          <div>적립금: {product.point}</div>
          <div>배송정보: {product.delivery_info}</div>
          <div>배송비 : {product.delivery_fee}</div>
        </ProductBuyInfo>
        <ProductCount></ProductCount>
        <ProductPrice>
          여기는 총 주문 금액이 들어갈 예정입니다. 카운트를 같이 계산해서..
        </ProductPrice>
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

const ThumbnailUL = styled.div`
  display: flex;
`;

const Thumbnail = styled.img`
  width: 100px;
  height: 100px;
`;

const ProductImage = styled.div``;

const Information = styled.div``;

const ProductMainInfo = styled.div``;

// const LabelList = styled.div``;

const ProductBuyInfo = styled.div``;

const ProductCount = styled.div``;

const ProductPrice = styled.div``;

export default Modal;
