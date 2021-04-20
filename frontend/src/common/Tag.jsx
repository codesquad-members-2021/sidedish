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


const EventTag = ({type}) => {
    return (
        <TagStyle type={type}>
            <span>이벤트특가</span>
        </TagStyle>
    )
}

const LaunchingTag = ({type}) => {
    return (
        <TagStyle type={type}>
            <span>런칭특가</span>
        </TagStyle>
    )
}

const Tag = ({ type }) => {
    return {
        event: <EventTag type={ type } />,
        launching: <LaunchingTag type={ type } />
    }[type];
}

export default Tag;