import { useState, useEffect } from "react";
import CategoryItemsTitle from "./MainItemsTitle";
import CategoryItemsCard from "./MainItemsCard/MainItemsCard";
import TotalCategoryButton from "./TotalCategoryButton";
import getData from "../utils/getData";
import Slider from "../Slider/Slider";
import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles";

const MainItems = (props) => {
  const [mainDishData, setMainDishData] = useState(null);
  const [soupDishData, setSoupDishData] = useState(null);
  const [sideDishData, setSideDishData] = useState(null);
  const [totalButtonFlag, setTotalButtonFlag] = useState(true);
  const [error, setError] = useState(false);

  const URL = {
    MAINDISH:
      "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080/dish/main",
    SOUPDISH:
      "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080/dish/soup",
    SIDEDISH:
      "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080/dish/side",
  };

  const handleClickTotalButton = () => {
    if (totalButtonFlag) {
      setTotalButtonFlag(false);
      getData(URL.SOUPDISH, setSoupDishData, setError);
      getData(URL.SIDEDISH, setSideDishData, setError);
    } else {
      setTotalButtonFlag(true);
      setSoupDishData(null);
      setSideDishData(null);
    }
  };

  useEffect(() => {
    getData(URL.MAINDISH, setMainDishData, setError);
    // const url =
    //   "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080/dish/detail/123";

    // try {
    //   fetch(url)
    //     .then((res) => res.json())
    //     .then((json) => {
    //       console.log(json);
    //     });
    // } catch (err) {
    //   console.error(err);
    //   alert("에러가 발생했습니다");
    // }
  }, []);

  const Category = (categoryData) => {
    if (categoryData === null) return null;

    const cards = categoryData.items.map((item, index) => (
      <CategoryItemsCard
        key={index}
        item={item}
        handleClickCard={props.handleClickCard}
      />
    ));

    return (
      <S.CategoryItemsWrapper>
        <CategoryItemsTitle categoryTitle={categoryData.dish_category_name} />
        <Slider
          sliderWidth={1280}
          cardWidth={324}
          cardShown={4}
          totalCardCount={cards.length}
          transition={"all 0.5s"}
          cards={cards}
          leftButton={<CS.Button.LEFT_BUTTON />}
          rightButton={<CS.Button.RIGHT_BUTTON />}
        />
      </S.CategoryItemsWrapper>
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
