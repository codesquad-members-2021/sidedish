import * as S from "../HeaderStyles";
import MenuWrapper from "./Menu/MenuWrapper";
import { useState } from "react";

const categoryData = [
  {
    name: "든든한 메인요리",
    category: ["육류 요리", "해산물 요리"],
  },
  {
    name: "뜨끈한 국물요리",
    category: ["국/탕/찌개"],
  },
  {
    name: "정갈한 밑반찬",
    category: ["나물/무침", "조림/볶음", "절임/장아찌"],
  },
];

const categoryNameList = categoryData.reduce((acc, category) => {
  acc.push(category.name);
  return acc;
}, []);

const Category = () => {
  const [isMouseOver, setIsMouseOver] = useState(false);
  const [currentCategoryId, setCurrentCategoryId] = useState(null);
  const [display, setDisplay] = useState("none");

  const handleMouseEnter = e => {
    setIsMouseOver(true);
    setCurrentCategoryId(e.target.id);
    setDisplay("block");
  };

  const handleMouseLeave = () => {
    setIsMouseOver(false);
    setCurrentCategoryId(null);
    setDisplay("none");
  };

  // 복사되는중 ..
  return (
    <>
      <S.Category>
        {categoryNameList.map((category, idx) => {
          console.log("id", currentCategoryId, idx);
          return (
            <S.CategoryList
              key={idx}
              id={idx}
              onMouseEnter={handleMouseEnter}
              onMouseLeave={handleMouseLeave}
            >
              {category}
              {+currentCategoryId === idx && (
                <MenuWrapper
                  key={idx}
                  id={currentCategoryId}
                  {...{ categoryData, isMouseOver, currentCategoryId, display }}
                ></MenuWrapper>
              )}
            </S.CategoryList>
          );
        })}
      </S.Category>
    </>
  );
};

export default Category;
