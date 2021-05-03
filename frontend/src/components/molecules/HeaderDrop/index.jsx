import React from "react";
import { Div } from "./index.style";
import Span from "../../atoms/Span";

const onHeaderMenu = (ele) => {
  ele.target.style.color = "#333";
  ele.target.style.textDecoration = "underline";
};
const outHeaderMenu = (ele) => {
  ele.target.style.color = "#828282";
  ele.target.style.textDecoration = "none";
};
const HeaderDrop = ({ children, ...props }) => {
  if (props.isDrop !== "None") {
    if (props.isDrop === "Menu1") {
      if (props.menuNum === 1) {
        return (
          <Div {...props}>
            <Span
              className="_dropDeact"
              onMouseEnter={(event) => onHeaderMenu(event)}
              onMouseLeave={(event) => outHeaderMenu(event)}
            >
              육류 요리
            </Span>
            <Span
              className="_dropDeact"
              onMouseEnter={(event) => onHeaderMenu(event)}
              onMouseLeave={(event) => outHeaderMenu(event)}
            >
              해산물 요리
            </Span>
          </Div>
        );
      } else return null;
    } else if (props.isDrop === "Menu2") {
      if (props.menuNum === 2) {
        return (
          <Div {...props}>
            <Span
              className="_dropDeact"
              onMouseEnter={(event) => onHeaderMenu(event)}
              onMouseLeave={(event) => outHeaderMenu(event)}
            >
              국/탕/찌개
            </Span>
          </Div>
        );
      } else return null;
    } else {
      if (props.menuNum === 3) {
        return (
          <Div {...props}>
            <Span
              className="_dropDeact"
              onMouseEnter={(event) => onHeaderMenu(event)}
              onMouseLeave={(event) => outHeaderMenu(event)}
            >
              나물/무침
            </Span>
            <Span
              className="_dropDeact"
              onMouseEnter={(event) => onHeaderMenu(event)}
              onMouseLeave={(event) => outHeaderMenu(event)}
            >
              조림/볶음
            </Span>
            <Span
              className="_dropDeact"
              onMouseEnter={(event) => onHeaderMenu(event)}
              onMouseLeave={(event) => outHeaderMenu(event)}
            >
              절임/장아찌
            </Span>
          </Div>
        );
      } else return null;
    }
  } else {
    return null;
  }
};

export default HeaderDrop;
