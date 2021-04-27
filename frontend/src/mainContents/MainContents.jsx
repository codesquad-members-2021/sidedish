import styled from "styled-components"
import ProductCard from "../utilComponent/ProductCard"

const MainContents = ({items}) => {
    return (
        <StyledMainContents>
            {items.map(item => <ProductCard key={item.detail_hash} size={"large"} item={item} />)}
        </StyledMainContents>
    )
}

export default MainContents;

const StyledMainContents = styled.div`
    box-sizing: border-box;
    width: 1280px;
    padding: 40px;
    display: flex;
    justify-content: space-between;
    background: #EEF4FA;
    box-shadow: 0px 1px 30px rgba(224, 224, 224, 0.3);
    border-radius: 0px 5px 5px 5px;
`