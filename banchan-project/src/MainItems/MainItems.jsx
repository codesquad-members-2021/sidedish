import { useState, useEffect } from "react";
import MainItemsTitle from "./MainItemsTitle";
import MainItemsCard from "./MainItemsCard/MainItemsCard";
import TotalCategoryButton from "./TotalCategoryButton";
import * as S from "./MainItemsStyles";
import * as CS from "../Styles/commonStyles";

const MainItems = () => {
  const [data, setData] = useState([]);

  const getData = async () => {
    const url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main";
    const data = await fetch(url).then((res) => res.json());
    return data;
  };

  useEffect(() => {
    getData().then((res) => {
      const newData = res.body;
      setData(newData);
    });
  }, []);

  return (
    <>
      <MainItemsTitle />
      <S.MainItemsCardWrapper>
        {data.map((items, index) => (
          <MainItemsCard key={index} items={items} />
        ))}
      </S.MainItemsCardWrapper>
      <CS.LeftButton />
      <CS.RightButton />
      <TotalCategoryButton />
    </>
  );
};

export default MainItems;
