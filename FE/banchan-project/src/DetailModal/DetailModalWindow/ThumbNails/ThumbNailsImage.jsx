import * as S from "../../DetailModalStyles";

const ThumbNailsImage = ({ thumbNailsImage }) => {
  return thumbNailsImage.map((image, index) =>
    image === "" ? (
      <S.ThumbNailsEmptyImage key={index} width={72} height={72} />
    ) : (
      <S.ThumbNailsImage key={index} width={72} height={72} src={image} />
    )
  );
};

export default ThumbNailsImage;
