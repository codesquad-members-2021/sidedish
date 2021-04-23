import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";

const BestItemsCardImage = ({ image }) => {
  const IMG =
    "http://www.straightnews.co.kr/news/photo/201912/61797_33389_525.jpg";

  // 현재 api 상에 유효한 img url 없는 상태
  return (
    <S.BestItemsCardImage>
      <CS.Card.CardImage
        imgUrl={image}
        width={384}
        height={384}
      ></CS.Card.CardImage>
    </S.BestItemsCardImage>
  );
};

export default BestItemsCardImage;
