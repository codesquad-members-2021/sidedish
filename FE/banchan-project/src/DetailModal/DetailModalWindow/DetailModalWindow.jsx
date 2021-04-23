import { useState, useEffect } from "react";
import DetailMainImage from "./DetailMainImage";
import ThumbNails from "./ThumbNails/ThumbNails";
import ItemInfo from "./ItemInfo/ItemInfo";
import Delivery from "./Delivery/Delivery";
import Count from "./Count/Count";
import Submit from "./Submit/Submit";
import RecommendedItems from "./RecommendedItems/RecommendedItems";
import * as S from "../DetailModalStyles";

const DetailModalWindow = () => {
  const [data, setData] = useState([]);

  const getData = async () => {
    const url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/HBDEF";
    const data = await fetch(url).then((res) => res.json());
    return data;
  };

  useEffect(() => {
    getData().then((res) => {
      const newData = res.data;
      setData(newData);
    });
  }, []);

  return (
    <>
      <S.DetailModalWindow>
        <S.ImagesWrapper>
          <DetailMainImage props={data} />
          <ThumbNails props={data} />
        </S.ImagesWrapper>
        <ItemInfo props={data} />
        <Delivery props={data} />
        <Count />
        <Submit />
      </S.DetailModalWindow>
      <RecommendedItems />
    </>
  );
};

export default DetailModalWindow;
