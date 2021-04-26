import * as style from "./MenuCard.style.jsx"
// n_price: "26,000"
// s_price: "18,200원"
const LargeCard = ({data}) => {
    return (
        <style.LargeCard>
            { LargeImg(data.img)}
            { InfoTitle(data.title) }
            { InfoContents(data.contents)}
            <style.FlexRowContainer>
                { NpriceCheck(data) }
            </style.FlexRowContainer>
            <style.FlexRowContainer>
                { EventPrice()}
            </style.FlexRowContainer>
        </style.LargeCard>
    )
}

const NpriceCheck = (data) => {
    if(data.n_price){
        return (
            <style.FlexRowContainer>
                { PriceAfter(data.n_price) }
                { PriceBefore(data.s_price) }
            </style.FlexRowContainer>
        )
    } else {
        return (
            <style.FlexRowContainer>
                { PriceAfter(data.s_price) }
            </style.FlexRowContainer>
        )
    }

}

const InfoTitle = (text) => {
    return (
        <style.LargeInfoTitle>
            {text}
        </style.LargeInfoTitle>)

}

const InfoContents = (text) => {
    return (
        <style.LargeInfoContents>
            {text}
        </style.LargeInfoContents>
    )
}
const LargeImg = (url) => {
    return (
        <style.LargeImg url={url}/>
    )    
}

const PriceAfter = (price) => {
    return (
        <style.LargePriceAfter>
            { price }
        </style.LargePriceAfter>
    )
}

const PriceBefore = (price) => {
    return (
        <style.LargePriceBefore>
            { price }
        </style.LargePriceBefore>
    )
}

const EventPrice = () => {
    return (
        <style.LargeEventPrice>이벤트 특가</style.LargeEventPrice>
    )
}

export { LargeCard }