import ThumbNailsImage from "./ThumbNailsImage";
import * as CS from "../../../Styles/commonStyles";

const ThumbNails = ({ thumbNails, handleMainImg }) => {
  let thumbNailsImage = new Array(5).fill("");

  if (thumbNails) {
    thumbNails.forEach((v, index) => thumbNailsImage.splice(index, 1, v));
  }

  return (
    <CS.Box.FLEX_ROW_BOX>
      <ThumbNailsImage
        thumbNailsImage={thumbNailsImage}
        handleMainImg={handleMainImg}
      />
    </CS.Box.FLEX_ROW_BOX>
  );
};

export default ThumbNails;
