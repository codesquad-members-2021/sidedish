import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const ThumbNailsImage = ({ thumbNailsImage }) => {
  return thumbNailsImage.map((image, index) => (
    <S.ThumbNailsImageWrapper key={index}>
      {image === "" ? (
        <S.ThumbNailsEmptyImage />
      ) : (
        <CS.Image.THUMB_NAILS src={image} />
      )}
    </S.ThumbNailsImageWrapper>
  ));
};

export default ThumbNailsImage;
