import styled from 'styled-components'

function HeaderLeft () {
  const HeaderLeftBlock = styled.div`
    display: flex;
    align-items: center;
  `

  const HeaderLogo = styled.h1`
    font-family: Noto Sans KR;
    font-size: 40px;
    font-style: normal;
    font-weight: 900;
    line-height: 58px;
    letter-spacing: -0.04em;
    text-align: left;
  `
  const HeaderMenu = styled.ul`
    width: 420px;
    height: 23px;
    margin-left: 56px;
    display: grid;
    padding: 0;
    grid-gap: 24px;
    grid-template-columns: 1fr 1fr 1fr;
    li {
      list-style: none;
    }
  `

  return (
    <HeaderLeftBlock>
      <HeaderLogo>BANCHAN</HeaderLogo>
      <HeaderMenu>
        <li>든든한 메인요리</li>
        <li>뜨끈한 국물요리</li>
        <li>정갈한 밑반찬</li>
      </HeaderMenu>
    </HeaderLeftBlock>
  )
}

export default HeaderLeft
