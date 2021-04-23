import { BestMenuStatic } from "../../rsc/static/components.js"
import * as style from "./BestMenu.style"
import BestMenuTab from "./BestMenuTab"

const BestMenu = () => {
  // console.log(BestMenuStatic.Tab)
    return (
      <div>
        <style.BestMenuTitle>{BestMenuStatic.Title}</style.BestMenuTitle>
        {/* <BestMenuTab props={BestMenuStatic.Tab}></BestMenuTab> */}
        {/* <div className="BestMenuTab"></div> */}
        <div className="BestMenuContents"></div>
      </div>
    )
}

export { BestMenu }