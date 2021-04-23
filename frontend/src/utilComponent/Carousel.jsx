// Carousel Slider (SubContents에서 사용)
import { useEffect, useState } from "react";
import styled from "styled-components";
import ArrowButton from "./ArrowButton";
import ProductCard from "./ProductCard";

const Carousel = ({arrData, carouselMargin, arrowTopPos, ...props}) => {
  const [turnOverCnt] = useState(4);

  const [startPos, setStartPos] = useState(1);
  const [endPos, setEndPos] = useState(-1);
  const [currPos, setCurrPos] = useState(0);

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => setEndPos(arrData.length > turnOverCnt ? turnOverCnt : arrData.length),[]);

  const updatePos = (aStartPos, aEndPos, aCurrPos) => {
    setStartPos(aStartPos);
    setEndPos(aEndPos);
    setCurrPos(aCurrPos);
  };

  const handleCarouselLeftClick = () => {
    if (startPos === 1) return;

    const nextEndPos =
      endPos - turnOverCnt < 1 ? arrData.length : endPos - turnOverCnt;
    const nextStartPos =
      nextEndPos - (turnOverCnt - 1) < 1 ? 1 : nextEndPos - (turnOverCnt - 1);
    const nextCurrPos = -(nextStartPos - 1);

    updatePos(nextStartPos, nextEndPos, nextCurrPos);
  };

  const handleCarouselRightClick = () => {
    if (endPos === arrData.length) return;

    let nextEndPos = endPos;
    if (turnOverCnt > nextEndPos) nextEndPos = turnOverCnt;
    nextEndPos =
      nextEndPos + turnOverCnt > arrData.length
        ? arrData.length
        : nextEndPos + turnOverCnt;

    const nextStartPos = nextEndPos - (turnOverCnt - 1);
    const nextCurrPos = -(nextStartPos - 1);

    updatePos(nextStartPos, nextEndPos, nextCurrPos);
  };

  const arrowOption = {
    cssTopPos: arrowTopPos,
    startPos, 
    endPos, 
    dataLength: arrData.length,
  };

  return (
    <StyledCarousel carouselMargin={carouselMargin} >

      <ContentItemsWrap>
        <ContentItems currPos={currPos} turnOverCnt={turnOverCnt}>
          {arrData &&
            arrData.map((item, i) => (
              <ContentItem key={i} turnOverCnt={turnOverCnt}>
                <ProductCard size="small" item={item}/>
              </ContentItem>
            ))}
        </ContentItems>
      </ContentItemsWrap>

      <ArrowButton onClick={handleCarouselLeftClick} arrowOption={arrowOption} direction="L" />
      <ArrowButton onClick={handleCarouselRightClick} arrowOption={arrowOption} direction="R" />

    </StyledCarousel>
  );
};

export default Carousel;

// --- Styled Components ---
const StyledCarousel = styled.div`
  margin: ${({carouselMargin}) => carouselMargin || "auto"};
  position: relative;
`;

const ContentItemsWrap = styled.div`
  overflow: hidden;
`;

const ContentItems = styled.ul`
  display: flex;
  flex-wrap: nowrap;
  transition: 1.5s;

  position: relative;
  left: ${({ currPos, turnOverCnt }) =>
    `calc((100% / ${turnOverCnt}) * ${currPos})`};
`;

const ContentItem = styled.li`
  // flex-grow | flex-shrink | flex-basis
  flex: ${({ turnOverCnt }) => `1 0 calc(100% / ${turnOverCnt})`};
  display: flex;
  justify-content: center;
`;
