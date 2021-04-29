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

const CategoryItemsWrapper = styled.div`
  width: 1280px;
`;

const CategoryItemsTitleWrapper = styled.div`
  margin: 40px 0px;
`;

const CategoryItemsCardImageWrapper = styled.div`
  position: relative;
  margin: 0px 16px 16px 0px;
`;

const CategoryItemsCardDescriptionWrapper = styled.div`
  margin: 8px 0px;
`;

const CategoryItemsPriceWrapper = styled(CS.Box.FLEX_ROW_CENTER_BOX)`
  margin-bottom: 16px;
`;

const CategoryItemsCardSPriceWrapper = styled.div`
  margin-right: 8px;
`;

const CategoryItemsCardNPriceWrapper = styled.div`
  color: ${theme.fontColors.GRAY4};
  text-decoration-line: line-through;
  margin: 0px 8px;
`;

const ItemsHoverBox = styled.div`
  position: absolute;
  top: 0px;
  cursor: pointer;
`;

const ItemsHoverTopText = styled.div`
  position: absolute;
  top: 35%;
  left: 37%;
`;

const ItemsHoverBottomText = styled.div`
  position: absolute;
  top: 55%;
  left: 37%;
`;

const ItemsHoverLine = styled.div`
  position: absolute;
  top: 50%;
  left: 37%;
`;

export {
  TotalCategoryButton,
  CategoryItemsWrapper,
  CategoryItemsTitleWrapper,
  CategoryItemsCardImageWrapper,
  CategoryItemsCardDescriptionWrapper,
  CategoryItemsPriceWrapper,
  CategoryItemsCardSPriceWrapper,
  CategoryItemsCardNPriceWrapper,
  ItemsHoverBox,
  ItemsHoverTopText,
  ItemsHoverBottomText,
  ItemsHoverLine,
};
