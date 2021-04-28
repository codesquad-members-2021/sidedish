import styled from "styled-components";
import * as CS from "../Styles/commonStyles";
import theme from "../Styles/theme";

const TotalCategoryButton = styled.button`
  position: absolute;
  left: 0%;
  bottom: -8%;
  border: none;
  outline: none;

  width: 1440px;
  height: 100px;

  background: ${theme.boxColors.GRAY6};
  box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.05);
  cursor: pointer;
`;

const MainItemsWrapper = styled.div`
  position: relative;
  width: 1280px;
`;

const MainItemsTitleWrapper = styled.div`
  margin: 40px 0px;
`;

const MainItemsCardScrollWrapper = styled(CS.Box.FLEX_ROW_BOX)`
  overflow: auto;
`;

const MainItemsCardImageWrapper = styled.div`
  position: relative;
  margin: 0px 16px 16px 0px;
`;

const MainItemsCardDescriptionWrapper = styled.div`
  margin: 8px 0px;
`;

const MainItemsPriceWrapper = styled(CS.Box.FLEX_ROW_CENTER_BOX)`
  margin-bottom: 16px;
`;

const MainItemsCardSPriceWrapper = styled.div`
  margin-right: 8px;
`;

const MainItemsCardNPriceWrapper = styled.div`
  color: ${theme.fontColors.GRAY4};
  text-decoration-line: line-through;
  margin: 0px 8px;
`;

const LeftButtonWrapper = styled.div`
  position: absolute;
  top: 50%;
  left: -5%;
  cursor: pointer;
`;

const RightButtonWrapper = styled.div`
  position: absolute;
  top: 50%;
  right: -5%;
  cursor: pointer;
`;

const BestItemsHoverBox = styled.div`
  position: absolute;
  top: 0px;
  cursor: pointer;
`;

const BestItemsHoverTopText = styled.div`
  position: absolute;
  top: 35%;
  left: 37%;
`;

const BestItemsHoverBottomText = styled.div`
  position: absolute;
  top: 55%;
  left: 37%;
`;

const BestItemsHoverLine = styled.div`
  position: absolute;
  top: 50%;
  left: 37%;
`;

export {
  TotalCategoryButton,
  MainItemsWrapper,
  MainItemsTitleWrapper,
  MainItemsCardScrollWrapper,
  MainItemsCardImageWrapper,
  MainItemsCardDescriptionWrapper,
  MainItemsPriceWrapper,
  MainItemsCardSPriceWrapper,
  MainItemsCardNPriceWrapper,
  LeftButtonWrapper,
  RightButtonWrapper,
  BestItemsHoverBox,
  BestItemsHoverTopText,
  BestItemsHoverBottomText,
  BestItemsHoverLine,
};
