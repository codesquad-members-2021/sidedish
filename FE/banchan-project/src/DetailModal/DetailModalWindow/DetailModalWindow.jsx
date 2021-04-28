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

const DetailModalWindow = (props) => {
  const [data, setData] = useState(null);
  const [error, setError] = useState(false);
  const [mainImg, setMainImg] = useState(null);
  const [count, setCount] = useState(0);
  const [stockOverFlag, setStockOverFlag] = useState(false);

  const getData = () => {
    try {
      fetch(props.detailUrl)
        .then((res) => res.json())
        .then((json) => {
          if (json) {
            setData(json);
            setMainImg(json.main_image);
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

  const manageCountLimit = ({
    countNumber,
    lowerLimit = 0,
    upperLimit = 30,
  }) => {
    if (countNumber < lowerLimit) return lowerLimit;
    else if (countNumber > upperLimit) return upperLimit;
    else {
      return countNumber;
    }
  };

  useEffect(() => {
    getData();
  }, []);

  if (!data || error) return null;

  return (
    <>
      <S.CloseButtonWrapper>
        <CS.Button.CLOSE_BUTTON onClick={props.handleModalFlag} />
      </S.CloseButtonWrapper>
      <S.DetailModalWindow>
        <S.DetailWrapper>
          <S.DetailModalPropWrapper>
            <CS.Box.FLEX_COLUMN_BOX>
              <DetailMainImage props={mainImg} />
              <ThumbNails
                thumbNails={data.thumb_images}
                handleMainImg={handleMainImg}
              />
            </CS.Box.FLEX_COLUMN_BOX>
          </S.DetailModalPropWrapper>

          <S.DetailModalPropWrapper>
            <ItemInfo data={data} />
            <Delivery data={data} />
            <Count
              count={manageCountLimit({
                countNumber: count,
              })}
              setCount={setCount}
              stock={data.stock}
              stockOverFlag={stockOverFlag}
              handleStockOver={handleStockOver}
            />
            <Prices
              count={manageCountLimit({
                countNumber: count,
              })}
              price={data.s_price}
              stockOverFlag={stockOverFlag}
              handleModalFlag={props.handleModalFlag}
            />
          </S.DetailModalPropWrapper>
        </S.DetailWrapper>

        <RecommendedItems
          recommended={data.recommended}
          handleClickCard={props.handleClickCard}
        />
      </S.DetailModalWindow>
    </>
  );
};

export default DetailModalWindow;
