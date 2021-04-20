import styled from 'styled-components'

const BtnStyle = styled.button`
    display: block;
    outline: none;
    border: none;
    border-radius: 5px;
    width: 440px;
    height: 58px;
    padding: 16px;
    box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
    background: ${({type}) => type === 'order' ? '#82D32D' : '#E0E0E0'};
    span {
        color: ${({type}) => type === 'order' ? '#fff' : '#bdbdbd'};
        font-size: 18px;
        font-weight: bold;
    }
`

const Button = ({ type }) => {
    return (
        <BtnStyle type={type}>
            {type === 'order' 
                ? <span>주문하기</span> 
                : <span>일시품절</span> 
            }
        </BtnStyle>
    );
}

export default Button;