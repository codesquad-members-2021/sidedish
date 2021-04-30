import styled, {css} from 'styled-components'

const Button = ({ type, onClick }) => {
    return (
        <StyledBtn type={type} onClick={onClick}>
            {type === 'order' 
                ? <span>주문하기</span> 
                : <span>일시품절</span> 
            }
        </StyledBtn>
    );
}

const StyledBtn = styled.button`
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

    cursor: ${({type}) => type === 'order' ? 'pointer' : 'not-allowed'};
    ${({ type }) =>
        type === "order" && css`
        &:hover {
            background-color: #8ee432;
        }
    `};

`

export default Button;