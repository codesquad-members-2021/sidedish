import { useState } from "react"
import styled from "styled-components"
import useFetch from "../hooks/useFetch"
import Title from "../utilComponent/Title"
import MainContents from "./MainContents"
import TabList from "./TabList"

const MainContentsContainer = () => {
    const [clickedTabId, setClickedTabId] = useState()
    const parse = json => {
        const initial = json.body[0].category_id;
        setClickedTabId(initial)
    }
    const {response: data, loading} = useFetch("/api/best", { callback: parse } );

    return (
        <>  
            {loading
            ?   <div>loading...</div>
            :   <StyledMainContents>
                    <Title type={"best"}/>
                    {data && <TabList
                        txtArr={data.body.map(v => v.name)}
                        keyArr={data.body.map(v => v.category_id)}
                        clickedTabId={clickedTabId}
                        setClickedTabId={setClickedTabId}
                    />}
                    {data && <MainContents
                        items={data.body.find(v => v.category_id === clickedTabId).items}
                    />}
                </StyledMainContents>
            }
        </>
    )
}

export default MainContentsContainer;

const StyledMainContents = styled.div`
    padding: 0 80px;
`