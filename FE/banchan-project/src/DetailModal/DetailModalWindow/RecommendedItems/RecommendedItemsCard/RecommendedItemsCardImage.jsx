import * as S from "../../../DetailModalStyles";
import * as CS from "../../../../Styles/commonStyles";

const RecommendedItemsCardImage = ({ image }) => {
  return (
    <S.RecommendedItemsCardImageWrapper>
      <CS.Image.RECOMMENDED src={image} />
    </S.RecommendedItemsCardImageWrapper>
  );
};

export default RecommendedItemsCardImage;
