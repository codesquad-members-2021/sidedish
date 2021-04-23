import styled from "styled-components";

const BestItems = styled.div`
  outline: red solid;
  height: 800px;
  padding: 0px 80px;
`;

const BestItemsTitle = styled.div`
  padding: 48px 0px 32px 0px;
`;
const BestItemsCardWrapper = styled.div`
  display: flex;
  padding: 40px;
  /* box */

  position: absolute;
  /* width: 1280px; */
  height: 620px;
  left: 80px;
  top: 295px;

  /* White Blue */

  background: #eef4fa;
  /* nomal */

  box-shadow: 0px 1px 30px rgba(224, 224, 224, 0.3);
  border-radius: 0px 5px 5px 5px;
`;

const BestItemsCard = styled.div`
  margin-right: 24px;
`;
const BestItemsCardBadge = styled.span``; //뱃지 종류에 따라 bg-color 다르게?
const BestItemsCardDescription = styled.span``;
const BestItemsCardImage = styled.div``;
const BestItemsCardNPrice = styled.span``;
const BestItemsCardSPrice = styled.span``;
const BestItemsCardTitle = styled.span``;

const BestItemsTab = styled.div``;
const BestItemsTabTitle = styled.ul`
  width: 1005px;
  height: 58px;
  display: flex;
  justify-content: space-between;
`;
const BestItemsTabTitleList = styled.li`
  padding: 16px 32px;
  color: #828282; //선택 안 되었을 때
  height: 58px;

  /* White Blue */

  background: #eef4fa;
  /* background: #eef4fa; */
  border-radius: 5px 5px 0px 0px;
  margin-right: 8px;

  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 700;
  font-size: 18px;
  line-height: 26px;
`;
const BestItemsTabBox = styled.div`
  outline: red 1px solid;
`;

export {
  BestItems,
  BestItemsTitle,
  BestItemsCardWrapper,
  BestItemsCard,
  BestItemsCardBadge,
  BestItemsCardDescription,
  BestItemsCardImage,
  BestItemsCardNPrice,
  BestItemsCardSPrice,
  BestItemsCardTitle,
  BestItemsTabTitleList,
  BestItemsTab,
  BestItemsTabTitle,
  BestItemsTabBox,
};
