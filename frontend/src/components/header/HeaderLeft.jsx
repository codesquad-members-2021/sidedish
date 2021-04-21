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
    height: 23px;
    width: 354px;
    margin-left: 56px;
    display: flex;
    justify-content: space-between;
    padding: 0;
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
