import styled from "styled-components";

const SmallCard = styled.div`
    width:160px;
    /* height:540px; */
    /* margin-left:5%; */
    text-align:left;
`

const LargeCard = styled.div`
    width:384px;
    height:540px;
    text-align:left;
    &.LargeCard {
        margin:2.5% 24px;
    }
`
const Img = styled.img`
    background-size: 100% 100%;
    background-repeat: no-repeat;
    background-image: url(${props => props.url});
`

const SmallImg = styled(Img)`
    width:160px;
    height:160px;
    margin-bottom: 8px;
`
const LargeImg = styled(Img)`
    width:384px;
    height:384px;
    margin-bottom: 16px;
`

const InfoTitle = styled.div`
    color: #333333;
    font-weight: normal;
`

const SmallInfoTitle = styled(InfoTitle)`
    font-size: 16px;
    line-height: 23px;
    margin-bottom: 8px;
`

const LargeInfoTitle = styled(InfoTitle)`
    font-size: 16px;
    line-height: 23px;
    margin-bottom: 8px;
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
const SmallPrice = styled.div`
    font-weight: bold;
    font-size: 14px;
    line-height: 20px;
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

    display: flex; 
    align-items: center; 
    justify-content: center;
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
    SmallCard,
    LargeCard,
    SmallImg,
    LargeImg,
    SmallInfoTitle,
    LargeInfoTitle,
    LargeInfoContents,
    SmallPrice,
    LargePrice,
    LargePriceBefore,
    LargePriceAfter,
    LargeSpeicalPrice,
    LargeEventPrice,
    LargeLaunchingPrice,
    FlexRowContainer,
}