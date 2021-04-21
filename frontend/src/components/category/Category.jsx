import styled from 'styled-components'
import CategoryList from './CategoryList'

const CategoryDiv = styled.div`
  width: 1392px;
  height: 554px;
`
const CategoryBtn = styled.button`
  width: 1440px;
  height: 100px;
  background-color: #f5f5f7;
  font-size: 18px;
  font-weight: 700;
`

function Category () {
  return (
    <>
      <CategoryDiv>
        <CategoryList title={'모두가 좋아하는 든든한 메인요리'} />
        <CategoryBtn>모든 카테고리 보기</CategoryBtn>
      </CategoryDiv>
    </>
  )
}

export default Category
