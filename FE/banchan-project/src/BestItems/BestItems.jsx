import { useState, useEffect } from "react";
import * as S from "./BestItemsStyles";
import BestItemsTitle from "./BestItemsTitle";
import BestItemsTab from "./BestItemsUI/BestItemsTab/BestItemsTab";
import BestItemsCardWrapper from "./BestItemsUI/BestItemsCardWrapper";

const URL =
  "https://c022c734-76a1-4d17-a2e6-5373a7e43886.mock.pstmn.io/dish/best"; //백엔드 데이터
const BestItems = () => {
  const [titleList, setTitleList] = useState([]);
  const [initialTabData, setInitialTabData] = useState({});

  const getTitleListData = async () => {
    const rawData = await fetch(URL).then(res => res.json());

    return rawData.reduce((titleList, title) => {
      titleList.push(title.best_category_name);
      return titleList;
    }, []);
  };

  const getInitialTabData = async () => {
    const rawData = await fetch(`${URL}/1`).then(res => res.json());
    return rawData;
  };

  useEffect(() => {
    getTitleListData().then(res => {
      setTitleList(res);
    });
  }, []);

  useEffect(() => {
    getInitialTabData().then(res => {
      setInitialTabData(res);
    });
  }, []);

  // if (!initialTabData) return null;

  return (
    <S.BestItems>
      <BestItemsTitle></BestItemsTitle>
      <BestItemsTab {...{ titleList }}></BestItemsTab>
      <BestItemsCardWrapper {...{ initialTabData }}></BestItemsCardWrapper>
    </S.BestItems>
  );
};

export default BestItems;
