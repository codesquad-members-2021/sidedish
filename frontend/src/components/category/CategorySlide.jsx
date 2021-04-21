import styled from 'styled-components'
import ItemCard from '../ItemCard'
import mokdata from './data.json'



const CategoryColumn = styled.div`
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-gap: 16px;
`
const CategorySlideBlock = styled.div`
  display: flex;
  align-items: center;
  padding: 0 80px;
  justify-content: space-between;
`
const leftBtn = styled.button``
const rightBtn = styled.button``

const ItemCards = mokdata.map(data => <ItemCard data={data} size={'S'} />)

function CategorySlide () { 
  return (
    <CategorySlideBlock>
     
      <leftBtn>왼쪽</leftBtn>
      <CategoryColumn>{ItemCards}</CategoryColumn>
      <rightBtn>오른쪽</rightBtn>
    </CategorySlideBlock>
  )
}

export default CategorySlide
