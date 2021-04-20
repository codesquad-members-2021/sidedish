import styled from "styled-components";
import { theme, Title } from "../Theme";
import ItemCard from "../ItemCard";
const TabWrapper = styled.div`
  display: flex;
`;

const text = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`;

const Tab = styled(text)`
width: 201px;
height 58px;
background-color: ${theme.colors.skyblue};
margin-right: 5px;
font-size: ${theme.fontSize.btn};
`;

const MainColumn = styled.div`
  width: 1280px;
  height: 620px;
  background-color: ${theme.colors.skyblue};
  display: flex;
  padding: 40px;
`;

function MainMenu() {
  return (
    <>
      <Title>후기가 증명하는 베스트 반찬</Title>
      <TabWrapper>
        <Tab>할인특가 세트상품</Tab>
        <Tab>풍성한 고기반찬</Tab>
        <Tab>편리한 반찬세트</Tab>
        <Tab>간편한 덮밥요리</Tab>
        <Tab>우리아이 영양반찬</Tab>
      </TabWrapper>
      <MainColumn>
        <ItemCard></ItemCard>
      </MainColumn>
    </>
  );
}

export default MainMenu;
