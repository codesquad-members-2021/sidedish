import styled from 'styled-components'
import { theme, Title } from '../Theme'
import CategorySlide from './CategorySlide'
const CategoryListBlock = styled.div`
margin-bottom: 36px;`

function CategoryList ({ title }) {
  return (
    <CategoryListBlock>
      <Title>{title}</Title>
      <CategorySlide />
    </CategoryListBlock>
  )
}

export default CategoryList
