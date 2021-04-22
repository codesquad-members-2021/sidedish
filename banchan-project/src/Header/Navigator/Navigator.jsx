import { useState, useEffect } from "react";
import Category from "./Category";

import * as S from "../HeaderStyles";

const checkHoverTarget = e => {
  console.log(e.target);
};

const Navigator = () => {
  const [isMouseOver, setIsMouseOver] = useState(false);
  const [currentCategory, setCurrentCategory] = useState(null);

  const handleMouseEnter = e => {
    setIsMouseOver(true); //스코프를 탈출해야 state가 바뀐다.
    setCurrentCategory(e.target.textContent);
    console.log("in");
  };

  const handleMouseLeave = () => {
    setIsMouseOver(false);
    console.log("out");
  };
  return (
    <S.Navigator>
      <Category
        {...{
          isMouseOver,
          handleMouseEnter,
          handleMouseLeave,
          currentCategory,
        }}
      ></Category>
      {/* <MenuWrapper {...{ isMouseOver, currentCategory }}></MenuWrapper> */}
    </S.Navigator>
  );
};

export default Navigator;
