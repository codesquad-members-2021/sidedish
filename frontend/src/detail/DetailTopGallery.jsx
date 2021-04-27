import { useState } from "react";
import styled, { css } from "styled-components";
import { cssFlexCenter } from "../style/CommonStyledCSS";

const DetailTopGallery = ({ items }) => {
  const [currSelectedIdx, setCurrSelectedIdx] = useState(0);

  const handleItemClick = ({ target }) => {
    const closestTarget = target.closest("li");
    if (!closestTarget) return;
    const selectedIdx = +closestTarget.dataset.idx;

    setCurrSelectedIdx(selectedIdx);
  };

  return (
    <StyledDetailTopGallery>
      {items &&
        items.map((item, i) => (
          <GalleryItem
            key={i}
            data-idx={i}
            currSelectedIdx={currSelectedIdx}
            onClick={handleItemClick}
          >
            {/* <img src="/img/banana.jpg" alt="banana" /> */}
            {i}
          </GalleryItem>
        ))}
    </StyledDetailTopGallery>
  );
};

export default DetailTopGallery;

// --- Styled Components ---
const StyledDetailTopGallery = styled.ul`
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  row-gap: 8px;
  column-gap: 8px;
  height: fit-content;
  width: fit-content;
  margin: 0 auto;
`;

const GalleryItem = styled.li`
  ${cssFlexCenter};

  cursor: pointer;

  ${({ currSelectedIdx, ...props }) =>
    currSelectedIdx === props["data-idx"]
      ? css`
          width: 392px;
          height: 392px;
          order: 0;
          grid-column-end: span 5;
        `
      : css`
          width: 72px;
          height: 72px;
          order: 1;

          // 자연스럽게 동작하려면 order를 계산해야함. 나중에..
        `}

  background-color: ${({ theme }) => theme.colors.gray6};
  border-radius: 5px;

  img {
    /* 이미지 크기 보정 */
    max-width: 100%;
    height: auto;
  }
`;
