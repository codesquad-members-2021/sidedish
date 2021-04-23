import * as style from "./MenuCard.style.jsx"

const SmallImg = (url) => {
    return (
        <style.SmallImg url={url}/>
    )    
}

const SmallInfoTitle = (text) => {
    return (
        <style.SmallInfoTitle value={text}>
            {text}
        </style.SmallInfoTitle>
    )
}

const SmallPrice = (text) => {
    return (
        <style.SmallPrice>{text}</style.SmallPrice>
    )
}

const SmallCard = () => {
    return(
        <style.SmallCard>
            { SmallImg("https://lh3.googleusercontent.com/proxy/f5a7tQjvzAtHwGMeCKrr-uPr-dyfo5rvTvTzGSykCEHQNrZIiTOQpaBfVeWtGO3md9hwZqPWhQO0SYNTPg9uVngUUHshhQ8ux1erGG651zlFEW_Z0NxjWg3tHkm6bOTeGcWvPDoCp2Z-te5-0WA8SOqC-dnEzWhe9Sc686_U3Dw")}
            { SmallInfoTitle("[마샐미디쉬] 유자소스 연근무침 250g") }
            { SmallPrice("6,500원")}
        </style.SmallCard>
    )
}

export { SmallCard }