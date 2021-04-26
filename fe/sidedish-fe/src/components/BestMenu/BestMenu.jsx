import React, {useEffect, useState} from "react"
import { BestMenuStatic } from "../../rsc/static/components.js"
import * as style from "./BestMenu.style"
import BestMenuTab from "./BestMenuTab"
import useFetchData from "../../util/hooks/useFetchData.js"
import { FlexRowContainer } from "../common/FlexContainer.jsx";
import { LargeCard } from "../MenuCard/LargeCard";

const BestMenu = () => {
  const [index, setIndex] = useState(0)
  const url = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best"
  const { response } = useFetchData(url, {});

  const renderTabTitles = () => { 
    return response.body.map((v, idx) => {
        if (index === idx) {
          console.log("SAME")
          return <style.BestMenuTabTitle className="select" key={idx}  data={v} data-idx={idx} onClick={handleCategoryClicked}>{v.name}</style.BestMenuTabTitle>
        }
        else return <style.BestMenuTabTitle  key={idx} data={v} data-idx={idx} onClick={handleCategoryClicked}>{v.name}</style.BestMenuTabTitle>
    }); 
  }

  const handleCategoryClicked = ({target}) => {
    if(index === Number(target.dataset.idx)) {
      return
    }
    setIndex(Number(target.dataset.idx))
  }
  
  const renderLargeCard = () => {
    return response.body[index].items.map(v => <LargeCard data={v} />);
  }

  return (
    <div style = {{ marginLeft : "5%" }}>
      <style.BestMenuTitle>{BestMenuStatic.Title}</style.BestMenuTitle>
      <FlexRowContainer >
        { response && renderTabTitles() }
      </FlexRowContainer>
      <style.BestMenuTabInfo>
        <FlexRowContainer>  
          { response && renderLargeCard() }
        </FlexRowContainer>
      </style.BestMenuTabInfo>
      <div className="BestMenuContents"></div>
    </div>
  )
}

export { BestMenu }