import * as S from "../MainItemsStyles";
import * as CS from "../../Styles/commonStyles";

const MainItemsCardImage = ({ image, alt }) => {
  return (
    <S.MainItemsCardImageWrapper>
      <CS.Image.MAIN_ITEMS src={image} alt={alt} />
    </S.MainItemsCardImageWrapper>
  );
};

export default MainItemsCardImage;
