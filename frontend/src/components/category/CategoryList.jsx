import styled from 'styled-components'
import { Title } from '../Theme'
import CategorySlide from './CategorySlide'
import useFetch from '../useFetch'
const TitleWrapper = styled.div`
  margin: 0 40px;
`
const loadingData = { img: './load.jpg' }

function CategoryList ({ title, url }) {
  const [initData, loadingState] = useFetch(process.env.REACT_APP_API_URL + url)
  let data = loadingState ? loadingData : initData.body
  return (
    <>
      <TitleWrapper>
        <Title>{title}</Title>
      </TitleWrapper>
      <CategorySlide data={data} />
    </>
  )
}

export default CategoryList
