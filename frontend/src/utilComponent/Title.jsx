import styled from 'styled-components'

const Title = ({type}) => {
    const text = {
        "best": "후기가 증명하는 베스트 반찬",
        "main": "모두가 좋아하는 든든한 메인요리",
        "soup": "정성이 담긴 뜨끈한 국물요리",
        "side": "식탁을 풍성하게 하는 정갈한 밑반찬"
    }
    return (
        <StyledTitle> {text[type]} </StyledTitle>
    )
}

const StyledTitle = styled.h2`
    height: 35px;
    margin-bottom: 32px;
    font-weight: bold;
    font-size: ${({ theme }) => theme.fontSize.XL};
    line-height: 35px;
    color: ${({ theme }) => theme.colors.gray1};
`

export default Title;