import { useState, useEffect } from "react";
import MainItemsTitle from "./MainItemsTitle";
import MainItemsCard from "./MainItemsCard/MainItemsCard";
import TotalCategoryButton from "./TotalCategoryButton";
import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles";

const MainItems = (props) => {
  const [mainDishData, setMainDishData] = useState(null);
  const [soupDishData, setSoupDishData] = useState(null);
  const [sideDishData, setSideDishData] = useState(null);
  const [totalButtonFlag, setTotalButtonFlag] = useState(true);
  const [error, setError] = useState(false);

  const URL = {
    MAINDISH: "/dish/main",
    SOUPDISH: "/dish/soup",
    SIDEDISH: "/dish/side",
  };

  const getData = (url, setFn) => {
    try {
      fetch(url)
        .then((res) => res.json())
        .then((json) => {
          if (json) {
            setFn(json);
          }
        });
    } catch (err) {
      alert("에러가 발생했습니다");
      setError(true);
    }
  };

  const handleClickTotalButton = () => {
    if (totalButtonFlag) {
      setTotalButtonFlag(false);
      getData(URL.SOUPDISH, setSoupDishData);
      getData(URL.SIDEDISH, setSideDishData);
    } else {
      setTotalButtonFlag(true);
      setSoupDishData(null);
      setSideDishData(null);
    }
  };

  useEffect(() => {
    getData(URL.MAINDISH, setMainDishData);
  }, []);

  const Category = (categoryData) => {
    if (categoryData === null) return null;

    return (
      <S.MainItemsWrapper>
        <MainItemsTitle categoryTitle={categoryData.dish_category_name} />
        <S.MainItemsCardScrollWrapper>
          <S.LeftButtonWrapper>
            <CS.Button.LEFT_BUTTON />
          </S.LeftButtonWrapper>
          {categoryData.items.map((item, index) => (
            <MainItemsCard
              key={index}
              item={item}
              handleClickCard={props.handleClickCard}
            />
          ))}
          <S.RightButtonWrapper>
            <CS.Button.RIGHT_BUTTON />
          </S.RightButtonWrapper>
        </S.MainItemsCardScrollWrapper>
      </S.MainItemsWrapper>
    );
  };

  if (error) return null;

  return (
    <>
      {Category(mainDishData)}
      {Category(soupDishData)}
      {Category(sideDishData)}
      <TotalCategoryButton
        totalButtonFlag={totalButtonFlag}
        handleClickTotalButton={handleClickTotalButton}
      />
    </>
  );
};

export default MainItems;
