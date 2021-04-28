import { useState, useEffect } from "react";
import * as S from "./BestItemsStyles";
import BestItemsTitle from "./BestItemsTitle";
import BestItemsTab from "./BestItemsUI/BestItemsTab/BestItemsTab";
import BestItemsCardWrapper from "./BestItemsUI/BestItemsCardWrapper";

const URL =
  "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080/dish/best";

const BestItems = ({ handleClickCard }) => {
  const [titleList, setTitleList] = useState([]);
  const [bestItemsData, setBestItemsData] = useState({});

  const getTitleListData = async () => {
    const rawData = await fetch(URL).then(res => res.json());

    return rawData.reduce((titleList, title) => {
      titleList.push(title.best_category_name);
      return titleList;
    }, []);
  };

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

  if (!bestItemsData) return null;

  return (
    <S.BestItems>
      <BestItemsTitle />
      <BestItemsTab {...{ titleList, setBestItemsData }}></BestItemsTab>
      <BestItemsCardWrapper
        {...{ bestItemsData, handleClickCard }}
      ></BestItemsCardWrapper>
    </S.BestItems>
  );
};

export default BestItems;
