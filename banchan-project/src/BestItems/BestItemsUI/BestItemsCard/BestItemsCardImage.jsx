import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";

const BestItemsCardImage = () => {
  const IMG =
    "http://www.straightnews.co.kr/news/photo/201912/61797_33389_525.jpg";
  return (
    <S.BestItemsCardImage>
      <CS.Card.CardImage
        imgUrl={IMG}
        width={384}
        height={384}
      ></CS.Card.CardImage>
    </S.BestItemsCardImage>
  );
};

export default BestItemsCardImage;
