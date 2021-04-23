import styled from 'styled-components'
import { BsSearch } from 'react-icons/bs'
function HeaderRight () {
  const HeaderRightBlock = styled.div`
    button {
      font-size: 16px;
      margin-left: 24px;
    }
    position: relative;
  `

  const HeaderSeachBar = styled.input`
    height: 40px;
    width: 248px;
    background: #f5f5f7;
    border-radius: 5px;
    border: none;
    padding: 0 16px;
    box-sizing: border-box;
    &:focus {
      outline: none;
    }
  `
  const SearchBarIcon = styled.div`
    position: absolute;
    left: 51%;
    top: 23.38%;
  `
  const HeaderLonIn = styled.button``

  const HeaderCart = styled.button``

  return (
    <HeaderRightBlock>
      <HeaderSeachBar />
      <SearchBarIcon>
        <BsSearch />
      </SearchBarIcon>
      <HeaderLonIn>로그인</HeaderLonIn>
      <HeaderCart>장바구니</HeaderCart>
    </HeaderRightBlock>
  )
}

export default HeaderRight
