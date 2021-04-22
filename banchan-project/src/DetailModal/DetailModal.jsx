import { useState, useEffect } from "react";
import DetailModalWindow from "./DetailModalWindow/DetailModalWindow";
import * as S from "./DetailModalStyles";

const DetailModal = () => {
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
      <DetailModalWindow data={data} />
      {/* <S.DetailModalBackground /> */}
    </>
  );
};

export default DetailModal;
