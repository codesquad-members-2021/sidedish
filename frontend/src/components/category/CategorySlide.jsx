import styled from 'styled-components'
import ItemCard from '../ItemCard'
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc'
import { AlignTextCenter } from '../Theme'

import useFetch from '../useFetch'
const CategoryWrapper = styled.div`
  display: flex;
  overflow: hidden;
`
const CategoryColumn = styled.div`
  width: 1280px;
  padding: 0px;
  display: flex;
  overflow: hidden;
  div {
    margin-left: 16px;
    &:first-child {
      margin-left: 0px;
    }
  }
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

const ButtonLeft = styled(Button)``
const ButtonRight = styled(Button)``
const LoadingWapper = styled(AlignTextCenter)`
  width: 1280px;
  height: 384px;
`

function CategorySlide ({ data }) {
  const ItemCards = Array.isArray(data) ? (
    data.map((data, idx) => <ItemCard key={idx} data={data} size={'S'} />)
  ) : (
    <LoadingWapper>
      <img src={"data.img"} alt={'loading'} />
    </LoadingWapper>
  )

  return (
    <CategorySlideBlock>
      <ButtonLeft>
        <VscChevronLeft />
      </ButtonLeft>
      <CategoryWrapper>
        <CategoryColumn>{ItemCards}</CategoryColumn>
      </CategoryWrapper>
      <ButtonRight>
        <VscChevronRight />
      </ButtonRight>
    </CategorySlideBlock>
  )
}

export default CategorySlide
