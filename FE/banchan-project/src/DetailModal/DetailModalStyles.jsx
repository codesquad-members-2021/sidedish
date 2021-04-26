import styled from "styled-components";
import * as CS from "../Styles/commonStyles";
import theme from "../Styles/theme";

const DetailModalWindow = styled(CS.Box.FLEX_COLUMN_BOX)`
  position: absolute;
  width: 960px;
  height: 680px;
  left: 17%;
  top: 5%;

  background: #fff;
  border-radius: 5px 5px 0px 0px;

  z-index: 1;
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

const CloseButtonWrapper = styled.div`
  position: absolute;
  top: 5%;
  left: 85%;
  z-index: 1;
`;

const DetailWrapper = styled(CS.Box.FLEX_ROW_BOX)`
  padding: 48px;
`;

const DetailModalPropWrapper = styled.div`
  margin-right: 32px;
`;

const CountWrapper = styled(CS.Box.FLEX_ROW_CENTER_BOX)`
  justify-content: space-between;
  padding: 24px 0px;
  border-bottom: 1px solid ${theme.boxColors.GRAY5};
`;

const CountNumber = styled.div`
  margin: 0px 10px;
`;

const CountNumberWrapper = styled(CS.Box.FLEX_ROW_BOX)`
  padding: 8px 24px;
  border: 1px solid ${theme.boxColors.GRAY5};
`;

const CountButtonWrapper = styled(CS.Box.FLEX_ROW_BOX)`
  height: 21px;
  padding: 4px 8px;
  align-items: center;
  border: 1px solid ${theme.boxColors.GRAY5};
`;

const DeliveryWrapper = styled(CS.Box.FLEX_COLUMN_BOX)`
  padding: 24px 0px;
  border-bottom: 1px solid ${theme.boxColors.GRAY5};
`;

const DeliveryTitleWrapper = styled.div`
  width: 20%;
  margin: 0px 16px 16px 0px;
`;

const DeliveryContentsWrapper = styled.div`
  width: 100%;
  margin: 0px 16px 16px 0px;
`;

const ItemInfoWrapper = styled(CS.Box.FLEX_COLUMN_BOX)`
  padding-bottom: 24px;
  border-bottom: 1px solid ${theme.boxColors.GRAY5};
`;

const DetailLineWrapper = styled.div`
  margin-bottom: 16px;
`;

const DetailNPriceWrapper = styled.div`
  color: ${theme.fontColors.GRAY3};
  text-decoration-line: line-through;
  margin: 0px 8px;
`;

const DetailSPriceWrapper = styled.div`
  margin: 0px 8px;
`;

const SubmitWrapper = styled(CS.Box.FLEX_COLUMN_BOX)`
  align-items: flex-end;
  padding-top: 24px;
`;

const PricesWrapper = styled(CS.Box.FLEX_ROW_CENTER_BOX)`
  justify-content: space-between;
  margin: 24px 0px;
`;

const TotalPricePropWrapper = styled.div`
  margin-right: 24px;
`;

const SubmitButton = styled.button`
  border: none;
  outline: none;
  padding: 16px;

  width: 440px;
  height: 58px;

  background: ${(props) =>
    props.stockOverFlag !== true
      ? `${theme.boxColors.GREEN}`
      : `${theme.boxColors.GRAY5}`};

  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);

  border-radius: 5px;
`;

const ThumbNailsImageWrapper = styled.div`
  margin: 8px 8px 0px 0px;
`;

const ThumbNailsEmptyImage = styled.div`
  width: 72px;
  height: 72px;

  background: ${theme.boxColors.GRAY6};
  border-radius: 5px;
`;

const RecommendedItems = styled.div`
  width: 960px;
  height: 396px;

  padding: 48px;

  background: ${theme.boxColors.GRAY6};

  border-radius: 0px 0px 5px 5px;
`;

const RecommendedItemsHeaderWrapper = styled(CS.Box.FLEX_ROW_CENTER_BOX)`
  justify-content: space-between;
  margin-bottom: 32px;
`;

const RecommendedItemsCardWrapper = styled(CS.Box.FLEX_ROW_BOX)`
  overflow: auto;
`;

const RecommendedItemsCardImageWrapper = styled.div`
  margin-right: 16px;
`;

const RecommendedItemsCardTitleWrapper = styled.div`
  margin: 8px 0px;
`;

const RecommendedItemsPaginationWrapper = styled.div`
  margin: 0px 17px;
`;

export {
  DetailModalWindow,
  DetailModalBackground,
  CloseButtonWrapper,
  DetailWrapper,
  DetailModalPropWrapper,
  CountWrapper,
  CountNumber,
  CountNumberWrapper,
  CountButtonWrapper,
  DeliveryWrapper,
  DeliveryTitleWrapper,
  DeliveryContentsWrapper,
  ItemInfoWrapper,
  DetailLineWrapper,
  DetailNPriceWrapper,
  DetailSPriceWrapper,
  SubmitWrapper,
  PricesWrapper,
  TotalPricePropWrapper,
  SubmitButton,
  ThumbNailsImageWrapper,
  ThumbNailsEmptyImage,
  RecommendedItems,
  RecommendedItemsHeaderWrapper,
  RecommendedItemsCardWrapper,
  RecommendedItemsCardImageWrapper,
  RecommendedItemsCardTitleWrapper,
  RecommendedItemsPaginationWrapper,
};
