import styled from 'styled-components'
import HeaderLeft from './HeaderLeft'
import HeaderRight from './headerRight'
function Header () {
  const HeaderBlock = styled.div`
    width: 100%;
    height: 122px;
    display: flex;
    align-items: center;
    justify-content: space-between;
  `

  return (
    <HeaderBlock>
      <HeaderLeft />
      <HeaderRight />
    </HeaderBlock>
  )
}

export default Header
