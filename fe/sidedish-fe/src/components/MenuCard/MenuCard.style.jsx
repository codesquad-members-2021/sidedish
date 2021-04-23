import styled from "styled-components";

const LargeCard = styled.div`
    width:384px;
    height:540px;
    margin-left:5%;
    text-align:left;
`

const LargeImg = styled.img.attrs({
    src: "https://lh3.googleusercontent.com/proxy/f5a7tQjvzAtHwGMeCKrr-uPr-dyfo5rvTvTzGSykCEHQNrZIiTOQpaBfVeWtGO3md9hwZqPWhQO0SYNTPg9uVngUUHshhQ8ux1erGG651zlFEW_Z0NxjWg3tHkm6bOTeGcWvPDoCp2Z-te5-0WA8SOqC-dnEzWhe9Sc686_U3Dw",
    })`
    background-color:beige;
    width:384px;
    height:384px;
    margin-bottom: 16px;
`
const LargeImg2 = styled.img`
    background-image: url(${props => props.url});
    background-color:beige;
    width:384px;
    height:384px;
    margin-bottom: 16px;

    background-repeat: no-repeat;
    background-size: 100% 100%;
`


const LargeInfoTitle = styled.div`
    width:100%;
    font-weight: normal;
    font-size: 16px;
    line-height: 23px;

    margin-bottom: 8px;
    /* Gray 1 */

    color: #333333;

`

const LargeInfoContents = styled.div`
    width:100%;
    font-weight: normal;
    font-size: 14px;
    line-height: 20px;
    margin-bottom: 16px;
    color: #828282;
`

const LargePrice = styled.div`
    display:flex;
    flex-direction: row;
    margin-bottom: 16px;
    align-items: baseline;
    
`


const LargePriceBefore = styled.div`
    font-size: 14px;
    line-height: 20px;
    text-decoration-line: line-through;
    color: #BDBDBD;
`


const LargePriceAfter = styled.div`
    font-weight: bold;
    font-size: 20px;
    margin-right:16px;
    line-height: 29px;
`

const LargeSpeicalPrice = styled.div`
    display: flex;
    flex-direction: row;
    padding: 4px 16px;

    /* Light Blue */
    border-radius: 5px;
    /* text-align:center; */
    color:white;
    
`

const LargeEventPrice = styled(LargeSpeicalPrice)`
    background-color : #82D32D;
    width: 97px;
    height: 28px;
`
const LargeLaunchingPrice = styled(LargeSpeicalPrice)`
    background-color : #86C6FF;;
`
const FlexRowContainer = styled.div`
    display:flex; 
    flex-direction:row;

    margin-bottom: 16px;
    align-items: baseline;
`

export {
    LargeCard,
    LargeImg,
    LargeInfoTitle,
    LargeInfoContents,
    LargePrice,
    LargePriceBefore,
    LargePriceAfter,
    LargeSpeicalPrice,
    LargeEventPrice,
    LargeLaunchingPrice,
    FlexRowContainer,
    LargeImg2,
}