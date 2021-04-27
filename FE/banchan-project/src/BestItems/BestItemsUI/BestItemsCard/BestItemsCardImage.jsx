import * as CS from "../../../Styles/commonStyles";

const BestItemsCardImage = ({ image }) => {
  const IMG =
    "http://www.straightnews.co.kr/news/photo/201912/61797_33389_525.jpg";

  // 현재 api 상에 유효한 img url 없는 상태
  return (
    <>
      <CS.Image.BEST_ITEMS src={image}></CS.Image.BEST_ITEMS>
    </>
  );
};

export default BestItemsCardImage;
