import styled from 'styled-components'
import { theme, Title } from '../Theme'
import ItemCard from '../ItemCard'
import { AlignTextCenter } from '../Theme'
import mokData from '../mokdata'
const MainWrapper = styled.div`
  margin-top: 40px;
  width: 100%;
  padding: ${theme.padding.globalPadding};
  box-sizing: border-box;
`
const TabWrapper = styled.div`
  display: flex;
`

const Tab = styled(AlignTextCenter)`
  width: 201px;
  height: 58px;
  background-color: ${theme.colors.skyblue};
  margin-right: 5px;
  font-size: ${theme.fontSize.large};
`

const MainColumn = styled.div`
  width: 1280px;
  height: 620px;
  background-color: ${theme.colors.skyblue};
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-gap: 30px;
  padding: 40px;
`
function MainMenu () {
  return (
    <MainWrapper>
      <Title>후기가 증명하는 베스트 반찬</Title>
      <TabWrapper>
        <Tab>할인특가 세트상품</Tab>
        <Tab>풍성한 고기반찬</Tab>
        <Tab>편리한 반찬세트</Tab>
        <Tab>간편한 덮밥요리</Tab>
        <Tab>우리아이 영양반찬</Tab>
      </TabWrapper>
      <MainColumn>
        {mokData.map((data, idx) => (
          <ItemCard key={idx} data={data} size={'L'}></ItemCard>
        ))}
      </MainColumn>
    </MainWrapper>
  )
}

export default MainMenu
