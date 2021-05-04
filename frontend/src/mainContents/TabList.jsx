import styled from "styled-components"

const TabList = ({txtArr, keyArr, clickedTabId, setClickedTabId}) => {
    const handleClickTab = ({target}) => setClickedTabId(target.id)
    return(
        <StyledTabList>
            {txtArr.map((txt, i) => <li
                key={keyArr[i]}
                id={keyArr[i]}
                className={keyArr[i] === clickedTabId ? "active" : "inactive"}
                onClick={handleClickTab}
            >{txt}</li>)}
        </StyledTabList>
    )
}

export default TabList;

const StyledTabList = styled.ul`
    display: flex;
    li {
        background: #EEF4FA;
        border-radius: 5px 5px 0px 0px;
        padding: 18px 32px 16px;
        margin-right: 8px;
        font-size: 18px;
        font-weight: 700;
        color: ${({ theme }) => theme.colors.gray1};
        cursor: pointer;
    }
    .inactive {
        background: #F5F5F7;
        color: ${({ theme }) => theme.colors.gray3};
        font-weight: 400;
    }
`