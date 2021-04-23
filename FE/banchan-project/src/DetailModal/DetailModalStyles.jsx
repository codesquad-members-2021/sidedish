import styled from "styled-components";
import { Card } from "../Styles/commonStyles";

const DetailModalWindow = styled.div`
  position: absolute;
  width: 960px;
  height: 680px;
  left: 25%;
  top: 10%;

  background: #fff;
  border-radius: 5px 5px 0px 0px;

  padding: 48px;

  z-index: 999;
`;

const DetailModalBackground = styled.div`
  position: fixed;
  top: 0%;
  left: 0%;
  width: 100%;
  height: 100%;
  background-color: #000;
  opacity: 0.4;
`;

const ImagesWrapper = styled.div`
  display: inline-block;
`;

const ThumbNailsImage = styled(Card.CardImage)`
  margin: 16px 8px 16px 0px;
`;

const ThumbNailsEmptyImage = styled.div`
  width: ${(props) => props.width}px;
  height: ${(props) => props.height}px;
  background: #f5f5f7;
  border-radius: 5px;
  margin: 16px 8px 16px 0px;
`;

const TotalPriceDescription = styled(Card.CardDescription)`
  font-weight: bold;
`;

const TotalPrice = styled(Card.CardTitle)`
  font-weight: bold;
  font-size: 32px;
  line-height: 46px;

  margin: 0px 24px;
`;

const SubmitButton = styled.button`
  border: none;
  outline: none;
  padding: 16px;

  width: 440px;
  height: 58px;

  background: #82d32d;

  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);

  border-radius: 5px;

  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;

  text-align: center;

  color: #ffffff;
`;

const DeliveryContents = styled(Card.CardDescription)`
  font-size: 16px;
  line-height: 23px;
  color: #4f4f4f;
  margin: 8px 16px;
`;

const RecommendedItems = styled.div`
  position: absolute;
  width: 960px;
  height: 396px;
  left: 25%;
  top: 79.7%;
  padding: 48px;

  background: #f5f5f7;
  border-radius: 0px 0px 5px 5px;

  z-index: 999;
`;

const RecommendedItemsCard = styled.div`
  display: flex;
  margin: 32px 0px;
  overflow: auto;
`;

const RecommendedItemsTitle = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;
  color: #333;
`;

const RecommendedItemsCardTitle = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 16px;
  line-height: 23px;
  color: #333;
  margin: 8px 0px;
`;

const RecommendedItemsCardPrice = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 14px;
  line-height: 20px;
  color: #333;
  margin: 8px 0px;
`;

const RecommendedItemsCardImage = styled(Card.CardImage)`
  margin-right: 16px;
`;

export {
  DetailModalWindow,
  DetailModalBackground,
  ImagesWrapper,
  ThumbNailsImage,
  ThumbNailsEmptyImage,
  TotalPriceDescription,
  TotalPrice,
  SubmitButton,
  DeliveryContents,
  RecommendedItems,
  RecommendedItemsCard,
  RecommendedItemsTitle,
  RecommendedItemsCardTitle,
  RecommendedItemsCardPrice,
  RecommendedItemsCardImage,
};
