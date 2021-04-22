import DetailMainImage from "./DetailMainImage";
import ThumbNails from "./ThumbNails/ThumbNails";

const DetailModalWindow = ({ data }) => {
  return (
    <>
      <DetailMainImage topImage={data.top_image} />
      <ThumbNails thumbNails={data.thumb_images} />
    </>
  );
};

export default DetailModalWindow;
