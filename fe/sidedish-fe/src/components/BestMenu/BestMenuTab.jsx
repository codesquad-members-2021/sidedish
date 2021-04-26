const BestMenuTab = ( props ) => {
    const Items = Object.values(props)[0]
    const renderItems = () => Items.map((v) => {
        console.log(v.cateId)
        console.log(v.title)
        return (
            <div key={v.cateId}></div>
        )
    })
    return (
        renderItems()
    )
}
export default BestMenuTab;