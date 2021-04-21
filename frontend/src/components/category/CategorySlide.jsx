import styled from 'styled-components'
import ItemCard from '../ItemCard'
import mokdata from './data.json'
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc'

const CategoryColumn = styled.div`
  width: 1280px;
  padding: 0 20px;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-gap: 16px;
`
const CategorySlideBlock = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 80px;
`
const Button = styled.button`
  font-size: 36px;
  border: none;
  background-color: transparent;
  &:focus {
    outline: none;
  }
  cursor: pointer;
`

const ButtonLeft = styled(Button)`
`
const ButtonRight = styled(Button)`
`

const ItemCards = mokdata.map(data => <ItemCard data={data} size={'S'} />)

function CategorySlide () {
  return (
    <CategorySlideBlock>
      <ButtonLeft>
        <VscChevronLeft />
      </ButtonLeft>
      <CategoryColumn>{ItemCards}</CategoryColumn>
      <ButtonRight>
        <VscChevronRight />
      </ButtonRight>
    </CategorySlideBlock>
  )
}

export default CategorySlide