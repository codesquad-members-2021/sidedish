import { useState } from "react";
import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const ThumbNailsImage = (props) => {
  const [selectedID, setSelectedID] = useState(0);

  const isSelected = (id) => {
    return selectedID === id;
  };

  const onClick = (e) => {
    props.handleMainImg(e);
    setSelectedID(Number(e.target.id));
  };

  return props.thumbNailsImage.map((image, index) => (
    <S.ThumbNailsImageWrapper key={index}>
      {image === "" ? (
        <S.ThumbNailsEmptyImage />
      ) : (
        <CS.Image.THUMB_NAILS
          id={index}
          src={image}
          selectedFlag={isSelected(index)}
          onClick={onClick}
        />
      )}
    </S.ThumbNailsImageWrapper>
  ));
};

export default ThumbNailsImage;
