import styled from "styled-components";
import { useState } from "react";
import { useDetailContext } from "../../Context";

const PopUpImagesStyle = styled.div``;

const PopUpMainImageStyle = styled.div`
  width: 100%;
  height: 24.5rem;
  background-image: ${(props) => `url(${props.src})`};
  background-size: cover;
  margin-bottom: 0.5rem;
  border-radius: 0.3125rem;
`;

const PopUpThumbnailImagesStyle = styled.div`
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-gap: 0.5rem;
`;

const PopUpThumbnailImageStyle = styled.img.attrs((props) => ({
  src: props.src,
}))`
  width: 100%;
  border-radius: 0.25rem;
  cursor: pointer;
  border: ${(props) =>
    props.active ? "2px solid #82D32D" : "2px solid transparent"};
  height: 4.5rem;
`;

export default function PopUpImages() {
  const detailData = useDetailContext();
  const { main_image, thumbnail_images } = detailData;
  const images = [main_image, ...thumbnail_images];
  const [activeImage, setActiveImage] = useState(images[0]);

  const onChangeMainImage = (idx) => {
    setActiveImage(images[idx]);
  };

  return (
    <PopUpImagesStyle>
      <PopUpMainImageStyle src={activeImage} />
      <PopUpThumbnailImagesStyle>
        {images.map((URL, idx) => (
          <PopUpThumbnailImageStyle
            active={activeImage === URL}
            src={URL}
            onClick={() => onChangeMainImage(idx)}
          />
        ))}
      </PopUpThumbnailImagesStyle>
    </PopUpImagesStyle>
  );
}
