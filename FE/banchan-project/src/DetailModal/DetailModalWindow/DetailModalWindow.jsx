import { useState, useEffect } from "react";
import DetailMainImage from "./DetailMainImage";
import ThumbNails from "./ThumbNails/ThumbNails";
import ItemInfo from "./ItemInfo/ItemInfo";
import Delivery from "./Delivery/Delivery";
import Count from "./Count/Count";
import Prices from "./Prices/Prices";
import RecommendedItems from "./RecommendedItems/RecommendedItems";
import * as S from "../DetailModalStyles";
import * as CS from "../../Styles/commonStyles";

const DetailModalWindow = () => {
  const [data, setData] = useState(null);
  const [error, setError] = useState(false);

  const getData = async () => {
    const url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/HBDEF";
    try {
      fetch(url)
        .then((res) => res.json())
        .then((json) => {
          if (json && json.data) {
            setData(json.data);
          }
        });
    } catch (err) {
      alert("에러가 발생했습니다.");
      setError(true);
    }
  };

  useEffect(() => {
    getData();
  }, []);

  if (!data) return null;
  if (error) return null;

  return (
    <>
      <S.CloseButtonWrapper>
        <CS.Button.CLOSE_BUTTON />
      </S.CloseButtonWrapper>
      <S.DetailModalWindow>
        <S.DetailWrapper>
          <S.DetailModalPropWrapper>
            <CS.Box.FLEX_COLUMN_BOX>
              <DetailMainImage props={data} />
              <ThumbNails props={data} />
            </CS.Box.FLEX_COLUMN_BOX>
          </S.DetailModalPropWrapper>

          <S.DetailModalPropWrapper>
            <ItemInfo props={data} />
            <Delivery props={data} />
            <Count />
            <Prices />
          </S.DetailModalPropWrapper>
        </S.DetailWrapper>

        <RecommendedItems />
      </S.DetailModalWindow>
    </>
  );
};

export default DetailModalWindow;
