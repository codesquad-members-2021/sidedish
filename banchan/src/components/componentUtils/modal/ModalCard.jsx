import React, { useState } from "react";
import styled from "styled-components";
import ProductImage from "./products/ProductImage";
import ProductInformation from "./products/ProductInformation";
import JennyCarousel from "reallyawesome-jennyrousel/dist/JennyCarousel";
import theme from "../styles/theme";
import { mockData } from "../../../utils/mockData";
import Card from "../card/Card";

const ModalCard = ({ product }) => {
  const [count, setCount] = useState(1);
  const [productImg, setProductImg] = useState(product.top_image);

  const thumbnailList = [...Array(5)].map((item, index) =>
    index >= product.thumb_images.length ? (
      <BlackThumbnail />
    ) : (
      <Thumbnail
        src={product.thumb_images[index]}
        onClick={() => {
          setProductImg(product.thumb_images[index]);
        }}
      />
    )
  );

  const increaseCount = () => setCount(count + 1);

  const getTotalPrice = (str) => Number(str.replace(/[^0-9]/g, "")) * count;

  const decreaseCount = () => count > 1 && setCount(count - 1);

  return (
    <ModalCardBackGround>
      <CardContent>
        <ProductImage imageUrl={productImg} thumbnailList={thumbnailList} />
        <ProductInformation {...{ product, getTotalPrice, increaseCount, decreaseCount, count }} />
      </CardContent>
      <RecommendCarouselSection>
        <RecommendCarouselTitle>함께하면 더욱 맛있는 상품</RecommendCarouselTitle>
        <JennyCarousel
          SLIDE_WIDTH={160}
          SLIDE_HEIGHT={300}
          BACKGROUND_COLOR={theme.colors.lightGrayBG}
          BUTTON_SIZE={20}
          NUM_OF_DATAS={mockData.length}
          NUM_OF_SLIDES={5}
          BUTTON_TYPE="VERTICAL"
          SLIDE_MARGIN={8}
        >
          {mockData.map((item) => (
            <Card key={item.detail_hash} product={item} cardSize={(props) => props.theme.cardSizes.S} margin={8} />
          ))}
        </JennyCarousel>
      </RecommendCarouselSection>
    </ModalCardBackGround>
  );
};

export default ModalCard;

const ModalCardBackGround = styled.div`
  width: 100%;
  display: flex;
  flex-direction: column;
  background: white;
  border-radius: ${(props) => props.theme.borders.radius};
  height: 90vh;
  overflow-y: scroll;
`;

const CardContent = styled.div`
  display: flex;
  padding: 48px;
`;

const BlackThumbnail = styled.div`
  width: 72px;
  height: 72px;
  background: ${(props) => props.theme.colors.lightGrayBG};
  border-radius: ${(props) => props.theme.borders.radius};
  margin: 8px 8px 8px 0;
`;

const Thumbnail = styled.img`
  width: 72px;
  height: 72px;
  border-radius: ${(props) => props.theme.borders.radius};
  margin: 8px 8px 8px 0;
  cursor: pointer;
`;

const RecommendCarouselSection = styled.div`
  position: relative;
  height: 386px;
  justify-content: center;
  flex-direction: column;
  background: ${(props) => props.theme.colors.lightGrayBG};
  border-radius: ${(props) => props.theme.borders.radius};
  padding: 48px 48px 12px 48px;
`;

const RecommendCarouselTitle = styled.div`
  position: absolute;
  top: 48px;
  left: 48px;
  margin-bottom: 32px;
  font-size: ${(props) => props.theme.fontSizes.L};
`;
