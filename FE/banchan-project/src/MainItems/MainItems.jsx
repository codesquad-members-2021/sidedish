import { useState, useEffect } from "react";
import MainItemsTitle from "./MainItemsTitle";
import MainItemsCard from "./MainItemsCard/MainItemsCard";
import TotalCategoryButton from "./TotalCategoryButton";
// import getData from "../utils/getData";
import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles";

const MainItems = () => {
  const [data, setData] = useState(null);
  const [error, setError] = useState(false);

  const getData = () => {
    const url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main";

    try {
      fetch(url)
        .then((res) => res.json())
        .then((json) => {
          if (json) {
            setData(json);
          }
        });
    } catch (err) {
      alert("에러가 발생했습니다");
      setError(true);
    }
  };

  useEffect(() => {
    getData();
  }, []);

  if (!data) return null;
  if (error) return null;

  return (
    <S.MainItemsWrapper>
      <MainItemsTitle />
      <S.MainItemsCardScrollWrapper>
        <S.LeftButtonWrapper>
          <CS.Button.LEFT_BUTTON />
        </S.LeftButtonWrapper>

        {data.body.map((items, index) => (
          <MainItemsCard key={index} items={items} />
        ))}

        <S.RightButtonWrapper>
          <CS.Button.RIGHT_BUTTON />
        </S.RightButtonWrapper>
      </S.MainItemsCardScrollWrapper>

      <TotalCategoryButton />
    </S.MainItemsWrapper>
  );
};

export default MainItems;
