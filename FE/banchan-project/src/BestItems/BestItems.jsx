import { useState, useEffect } from "react";
import * as S from "./BestItemsStyles";
import BestItemsTitle from "./BestItemsTitle";
import BestItemsTab from "./BestItemsUI/BestItemsTab/BestItemsTab";
import BestItemsCardWrapper from "./BestItemsUI/BestItemsCardWrapper";

const URL = "/dish/best"; //백엔드 데이터
const BestItems = () => {
  const [titleList, setTitleList] = useState([]);
  const [bestItemsData, setBestItemsData] = useState({});
  // 스윙 util로 적용
  const getTitleListData = async () => {
    const rawData = await fetch(URL).then(res => res.json());

    return rawData.reduce((titleList, title) => {
      titleList.push(title.best_category_name);
      return titleList;
    }, []);
  };

  // 스윙 util로 적용
  const getBestItemsData = async id => {
    const rawData = await fetch(`${URL}/${id}`).then(res => res.json());
    return rawData;
  };

  useEffect(() => {
    getTitleListData().then(res => {
      setTitleList(res);
    });
  }, []);

  useEffect(() => {
    getBestItemsData(1).then(res => {
      setBestItemsData(res);
    });
  }, []);

  // if (!bestItemsData) return null;

  return (
    <S.BestItems>
      <BestItemsTitle></BestItemsTitle>
      <BestItemsTab {...{ titleList, setBestItemsData }}></BestItemsTab>
      <BestItemsCardWrapper {...{ bestItemsData }}></BestItemsCardWrapper>
    </S.BestItems>
  );
};

export default BestItems;
