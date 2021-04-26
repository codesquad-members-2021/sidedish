import { useState, useEffect } from "react";
import MainItemsTitle from "./MainItemsTitle";
import MainItemsCard from "./MainItemsCard/MainItemsCard";
import TotalCategoryButton from "./TotalCategoryButton";
import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles";

const MainItems = () => {
  const [data, setData] = useState(null);
  const [error, setError] = useState(false);
  const [test, setTest] = useState(null);

  const getData = () => {
    const url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main";
    try {
      fetch(url)
        .then((res) => res.json())
        .then((json) => {
          if (json && json.body) {
            setData(json.body);
          }
        });
    } catch (err) {
      alert("에러가 발생했습니다");
      setError(true);
    }
  };

  const tests = () => {
    const url =
      "/api/thumbnails/remote/492x492ex/image/vendor_inventory/0db2/50bda73ed88a032cc47338eb982a6af50eca8394b9f20a83fc05e516bbcf.jpg";
    fetch(url).then((res) => console.log(res.url));
  };

  useEffect(() => {
    getData();
    tests();
  }, []);

  if (!data || !data.length) return null;
  if (error) return null;

  return (
    <S.MainItemsWrapper>
      <MainItemsTitle />
      <S.MainItemsCardScrollWrapper>
        <S.LeftButtonWrapper>
          <CS.Button.LEFT_BUTTON />
        </S.LeftButtonWrapper>

        {data.map((items, index) => (
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
