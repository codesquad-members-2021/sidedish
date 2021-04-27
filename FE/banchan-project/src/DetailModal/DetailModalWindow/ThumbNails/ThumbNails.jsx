import ThumbNailsImage from "./ThumbNailsImage";
import * as CS from "../../../Styles/commonStyles";

const ThumbNails = (props) => {
  let thumbNailsImage = new Array(5).fill("");

  if (props.props.thumb_images) {
    props.props.thumb_images.forEach((v, index) =>
      thumbNailsImage.splice(index, 1, v)
    );
  }

  return (
    <CS.Box.FLEX_ROW_BOX>
      <ThumbNailsImage
        thumbNailsImage={thumbNailsImage}
        handleMainImg={props.handleMainImg}
      />
    </CS.Box.FLEX_ROW_BOX>
  );
};

export default ThumbNails;
