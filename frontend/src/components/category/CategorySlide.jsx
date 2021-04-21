import styled from 'styled-components'
import ItemCard from '../ItemCard'
import mokdata from './data.json'
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc'

const CategoryColumn = styled.div`
  width: 1280px;
  /* height: 479px; */
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-gap: 16px;
`
const CategorySlideBlock = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
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
  margin-left: 16px;
`
const ButtonRight = styled(Button)`
  margin-right: 16px;
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