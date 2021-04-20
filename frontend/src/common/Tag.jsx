import styled from 'styled-components'

const TagStyle = styled.div`
    display: inline-block;
    box-sizing: border-box;
    padding: 7px 16px 5px;
    border-radius: 5px;
    background: ${({type}) => (type === 'event') ? '#82D32D' : '#86C6FF'};
    color: #fff;
    font-size: 14px;
    font-weight: bold;
`

const Tag = ({ type }) => {
    return (
        <TagStyle type={type}>
            {type === 'event' 
                ? <span>이벤트특가</span> 
                : <span>런칭특가</span> 
            }
        </TagStyle>
    );
}

export default Tag;