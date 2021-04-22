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
        <div>
            {renderItems()}
        </div>
    )
}

const Dropdown = ( props ) => {
    return (
        <div className="dropdown">
            <button className="dropdown-button">{props.title}</button>
            <div className="dropdown-content">
                <DropdownContents contents={props.contents}>
                </DropdownContents>
                {/* <a href="#">HTML</a>
                <a href="#">CSS</a>
                <a href="#">JS</a> */}
            </div>
        </div>
    )
}

export default Dropdown