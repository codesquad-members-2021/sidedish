import styled from 'styled-components'
import ItemCard from '../ItemCard'
import Loading from '../Loading'
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc'
const CatgoryWrapper = styled.div`
  width: 1280px;
  padding: 0px;
  overflow: hidden;
`
const CategoryColumn = styled.div`
  padding: 0px;
  display: grid;
  grid-gap: 16px;
  grid-template-columns: ${props => {
    const num = props.children.length
    return `repeat(${num}, 1fr);`
  }};
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

function CategorySlide ({ categoryData, loadingState }) {
  // const itemLists = Array.isArray(data) ? (

    const category = (data) => {
      if(data === "400Error") return (<div>400error</div>)
      else {
        return data.map((data, idx) => (<ItemCard key={idx} data={data} size={'S'} />))
      }
    } 

    const itemLists = !loadingState ? 
    category(categoryData)
   : (
    <Loading width='1280px' height='384px' />
  )
  return (
    <CategorySlideBlock>
      <ButtonLeft>
        <VscChevronLeft />
      </ButtonLeft>
      <CatgoryWrapper>
        <CategoryColumn>{itemLists}</CategoryColumn>
      </CatgoryWrapper>
      <ButtonRight>
        <VscChevronRight />
      </ButtonRight>
    </CategorySlideBlock>
  )
}

export default CategorySlide
