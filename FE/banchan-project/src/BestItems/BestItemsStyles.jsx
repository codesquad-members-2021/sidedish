import styled from "styled-components";
import theme from "../Styles/theme";

const BestItems = styled.div`
  height: 800px;
  padding: 0px 80px;
`;

const BestItemsTitle = styled.div`
  padding: 48px 0px 32px 0px;
`;

const BestItemsCardWrapper = styled.div`
  display: flex;
  padding: 40px;
  position: absolute;
  height: 620px;
  left: 80px;
  top: 295px;
  background: #eef4fa;
  box-shadow: 0px 1px 30px rgba(224, 224, 224, 0.3);
  border-radius: 0px 5px 5px 5px;
`;

const BestItemsCard = styled.div`
  margin-right: 24px;
`;

const BestItemsCardBadge = styled.div`
  margin-top: 16px;
`;

const BestItemsCardNPrice = styled.div`
  display: inline-block;
  text-decoration-line: line-through;
  color: #bdbdbd;
  margin-left: 8px;
`;

const BestItemsCardSPrice = styled.div`
  display: inline-block;
  margin-top: 16px;
`;

const BestItemsCardTitle = styled.div`
  margin: 16px 0px 8px 0px;
`;

const BestItemsTabTitle = styled.ul`
  width: 1100px;
  height: 58px;
  display: flex;
  justify-content: space-between;
  cursor: pointer;
`;

const BestItemsTabTitleList = styled.li`
  font-weight: 400;
  font-size: 18px;
  line-height: 26px;
  padding: 16px 32px;
  height: 58px;
  background: ${props =>
    props.active ? theme.boxColors.WHITE_BLUE : theme.boxColors.GRAY6};
  font-weight: ${props => (props.active ? "bold" : "normal")};
  color: ${props =>
    props.active ? theme.fontColors.GRAY1 : theme.fontColors.GRAY3};
  border-radius: 5px 5px 0px 0px;
  margin-right: 8px;
`;

const BestItemsCardImageWrapper = styled.div`
  position: relative;
`;

const BestItemsHoverBox = styled.div`
  position: absolute;
  top: 0px;
  cursor: pointer;
`;

const BestItemsHoverTopText = styled.div`
  position: absolute;
  top: 140px;
  left: 147px;
`;

const BestItemsHoverBottomText = styled.div`
  position: absolute;
  top: 208px;
  left: 147px;
`;

const BestItemsHoverLine = styled.div`
  position: absolute;
  top: 191px;
  left: 147px;
`;

export {
  BestItems,
  BestItemsTitle,
  BestItemsCardWrapper,
  BestItemsCard,
  BestItemsCardBadge,
  BestItemsCardNPrice,
  BestItemsCardSPrice,
  BestItemsCardTitle,
  BestItemsTabTitleList,
  BestItemsTabTitle,
  BestItemsCardImageWrapper,
  BestItemsHoverBox,
  BestItemsHoverLine,
  BestItemsHoverTopText,
  BestItemsHoverBottomText,
};
