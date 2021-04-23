import styled from "styled-components";

const TotalCategoryButton = styled.button`
  border: none;
  outline: none;

  width: 100%;
  height: 50px;

  background: #f5f5f7;
  box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.05);

  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;
  color: #333333;
`;

const MainItemsCardWrapper = styled.div`
  position: relative;
  display: flex;
  align-items: flex-start;
  overflow: auto;
`;

const MainItemsCard = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;

  margin: 16px;
`;

const MainItemsPriceWrapper = styled.div`
  display: flex;
  flex-direction: row;
  align-items: center;

  margin: 16px 0px;
`;

const LeftButtonWrapper = styled.div`
  position: absolute;
  top: 40%;
  left: 0%;
`;

const RightButtonWrapper = styled.div`
  position: absolute;
  top: 40%;
  right: 0%;
`;

export {
  TotalCategoryButton,
  MainItemsCardWrapper,
  MainItemsCard,
  MainItemsPriceWrapper,
  LeftButtonWrapper,
  RightButtonWrapper,
};
