import styled from 'styled-components'

function HeaderRight () {
  const HeaderRightBlock = styled.div``

  const HeaderSeachBar = styled.input`
    height: 40px;
    width: 248px;
    background: #f5f5f7;
    border-radius: 5px;
  `
  const HeaderLonIn = styled.button``

  const HeaderCart = styled.button``

  return (
    <HeaderRightBlock>
      <HeaderSeachBar></HeaderSeachBar>
      <HeaderLonIn>로그인</HeaderLonIn>
      <HeaderCart>장바구니</HeaderCart>
    </HeaderRightBlock>
  )
}

export default HeaderRight
