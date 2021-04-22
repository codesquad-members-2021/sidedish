const DropdownItem = (props) => {
    return (
        <a href="#">{props.content}</a>
    )
}

const DropdownContents = (props) => {
    const contents = props.contents;
    let renderItems = () => contents.map((content) =>
        <DropdownItem key={content} content={content}></DropdownItem>
    )
    return (
        renderItems()
    )
}

const Dropdown = ( props ) => {
    let propsItem = Object.values(props)[0]
    let title = propsItem[0].title
    let contents = propsItem[1].contents
    return (
        <div className="dropdown">
            <button className="dropdown-button">{title}</button>
            <div className="dropdown-content">
                <DropdownContents contents={contents}>
                </DropdownContents>
            </div>
        </div>
    )
}

const DropdownNav = ( props ) =>{
    let navItems = Object.values(props)[0]
    let renderNav = () => navItems.map((v)=>
        <Dropdown key={v[0].title} props={v}></Dropdown>
    )
    return (
        renderNav()
    )
}

export default DropdownNav