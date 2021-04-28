import { useState, useEffect, useRef } from "react";
import styled, { css } from "styled-components";
import { cssFlexCenter } from "../style/CommonStyledCSS";

const DetailTopGallery = ({ images }) => {
  const [selectedImage, setSelectedImage] = useState({ src: "", alt: "" });
  const selectedTarget = useRef(null);

  // 첫 렌더 (images 데이터 감시해야함)
  useEffect(() => {
    const firstItem = selectedTarget.current.children[0];
    if (!firstItem || firstItem.tagName !== "LI") return;

    const itemImage = firstItem.children[0];
    if (!itemImage || itemImage.tagName !== "IMG") return;

    const { src, alt } = itemImage;
    setSelectedImage({
      ...selectedImage,
      src, alt
    });
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [images]);

  const handleItemClick = ({ target }) => {
    const closestTarget = target.closest("li");
    if (!closestTarget) return;

    selectedTarget.current = closestTarget;
    const selected = selectedTarget.current.children[0];
    if (!selected || selected.tagName !== "IMG") return;

    const { src, alt } = selected;
    setSelectedImage({
      ...selectedImage,
      src, alt
    });
  };

  return (
    <StyledDetailTopGallery>
      <SelectedGalleryItem>
        <img src={selectedImage.src} alt={selectedImage.alt} />
      </SelectedGalleryItem>

      {/* 처음 렌더시에만 ref(selectedTarget)는 GalleryItems */}
      <GalleryItems ref={selectedTarget}>
        {images &&
          images.map((image, i) => (
            <GalleryItem key={i} onClick={handleItemClick}>
              <img src={image} alt={"image" + (i+1)} />
            </GalleryItem>
          ))}
        {images && images.length < 5 && <GalleryItem empty />}
      </GalleryItems>

    </StyledDetailTopGallery>
  );
};

export default DetailTopGallery;

// --- Styled Components ---

// 공통 css (이미지 크기 보정 & 디자인)
const cssGalleryItem = css`
  background-color: ${({ theme }) => theme.colors.gray6};
  border-radius: 5px;

  img {
    /* 이미지 크기 보정 */
    max-width: 100%;
    height: auto;
  }
`;
// ---

const StyledDetailTopGallery = styled.div`
  height: fit-content;
  width: fit-content;
  margin: 0 auto;
`;

const SelectedGalleryItem = styled.div`
  ${cssFlexCenter};
  ${cssGalleryItem};
  width: 392px;
  height: 392px;

  img {
    width: 100%;
  }
`;

const GalleryItems = styled.ul`
  margin: 8px 0;
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  row-gap: 8px;
  column-gap: 8px;
`;

const GalleryItem = styled.li`
  ${cssFlexCenter};
  ${cssGalleryItem};

  cursor: ${({empty}) => empty ? "default" : "pointer"} ;
  width: 72px;
  height: 72px;
`;
