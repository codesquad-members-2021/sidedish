import * as S from "../../../DetailModalStyles";
import * as CS from "../../../../Styles/commonStyles";

const RecommendedItemsCardImage = ({ image, detail_url, handleClickCard }) => {
  return (
    <S.RecommendedItemsCardImageWrapper
      onClick={() => handleClickCard(detail_url)}
    >
      <CS.Image.RECOMMENDED src={image} />
    </S.RecommendedItemsCardImageWrapper>
  );
};

export default RecommendedItemsCardImage;
