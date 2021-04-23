import * as style from "./MenuCard.style.jsx"

const LargeCard = () => {
    return (
        <style.LargeCard>
            { LargeImg("https://lh3.googleusercontent.com/proxy/f5a7tQjvzAtHwGMeCKrr-uPr-dyfo5rvTvTzGSykCEHQNrZIiTOQpaBfVeWtGO3md9hwZqPWhQO0SYNTPg9uVngUUHshhQ8ux1erGG651zlFEW_Z0NxjWg3tHkm6bOTeGcWvPDoCp2Z-te5-0WA8SOqC-dnEzWhe9Sc686_U3Dw")}
            { InfoTitle("[소중한 식사] 경상도 한상차림")}
            { InfoContents("경상도 명물요리 세 가지를 한상에!")}
            <style.FlexRowContainer>
                { PriceAfter("31,200원") }
                { PriceBefore("39,000원") }
            </style.FlexRowContainer>
            <style.FlexRowContainer>
                { EventPrice()}
            </style.FlexRowContainer>
        </style.LargeCard>
    )
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
        <style.LargeImg2 url={url}/>
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