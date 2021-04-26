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
  // 추후 props로 받은 데이터를 렌더에 사용할 예정입니다.
  const [data, setData] = useState(null);
  const [error, setError] = useState(false);
  const [mainImg, setMainImg] = useState(null);
  const [count, setCount] = useState(0);
  const [stockOverFlag, setStockOverFlag] = useState(false);

  const getData = () => {
    const url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/HBDEF";

    try {
      fetch(url)
        .then((res) => res.json())
        .then((json) => {
          if (json) {
            setData(json.data);
            setMainImg(json.data.top_image);
          }
        });
    } catch (err) {
      alert("에러가 발생했습니다");
      setError(true);
    }
  };

  const handleMainImg = ({ target: { src } }) => {
    setMainImg(src);
  };

  const handleStockOver = (boolean) => {
    setStockOverFlag(boolean);
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
              <DetailMainImage props={mainImg} />
              <ThumbNails props={data} handleMainImg={handleMainImg} />
            </CS.Box.FLEX_COLUMN_BOX>
          </S.DetailModalPropWrapper>

          <S.DetailModalPropWrapper>
            <ItemInfo props={data} />
            <Delivery props={data} />
            <Count
              count={count}
              setCount={setCount}
              stock={10}
              handleStockOver={handleStockOver}
            />
            <Prices count={count} price={5200} stockOverFlag={stockOverFlag} />
          </S.DetailModalPropWrapper>
        </S.DetailWrapper>

        <RecommendedItems />
      </S.DetailModalWindow>
    </>
  );
};

export default DetailModalWindow;
