// Carousel Slider
import { useEffect, useState } from "react";
import styled from "styled-components";
import { changeAllToNumbers } from "../../util/util";
import CarouselArrowBtn from "./CarouselArrowBtn";

const Carousel = ({
  itemsPerCnt = 4,
  cssCarouselWrapStyle = null,
  transitionProperty = "all",
  transitionDuration = "0.4s",
  arrowOption: {
    // arrowOption을 정의했지만 일부분을 안했을 때 이 안에 있는 값이 적용됨
    leftIcon = "◀",
    rightIcon = "▶",
    arrowLocation = "normal",
    btnSize = "32px",
  } = {
    // 아예 arrowOption을 정의 안했을 때
    leftIcon: "◀",
    rightIcon: "▶",
    arrowLocation: "normal",
    btnSize: "32px",
  },
  children: items,
}) => {
  // 1. 캐러셀 동작 관련 --------
  const [startPos, setStartPos] = useState(1);
  const [endPos, setEndPos] = useState(-1);
  const [leftCSSPos, setLeftCSSPos] = useState(0);

  const [currItemCnt] = useState(() => items.length );
  const [maxPageCnt] = useState(() => Math.ceil(items.length / itemsPerCnt));
  const [currPage, setCurrPage] = useState(1);

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => setEndPos(currItemCnt > itemsPerCnt ? itemsPerCnt : currItemCnt), []);

  const updatePos = (aStartPos, aEndPos, aLeftCSSPos, aCurrPage) => {
    setStartPos(aStartPos);
    setEndPos(aEndPos);
    setLeftCSSPos(aLeftCSSPos);
    setCurrPage(aCurrPage);
  };

  const handleCarouselLeftClick = () => {
    if (startPos === 1) return;

    const nextEndPos =
      endPos - itemsPerCnt < 1 ? currItemCnt : endPos - itemsPerCnt;
    const nextStartPos =
      nextEndPos - (itemsPerCnt - 1) < 1 ? 1 : nextEndPos - (itemsPerCnt - 1);
    const nextLeftCSSPos = -(nextStartPos - 1);
    const nextCurrPage = (nextStartPos <= 1) ? 1 : (currPage - 1);

    updatePos(nextStartPos, nextEndPos, nextLeftCSSPos, nextCurrPage);
  };

  const handleCarouselRightClick = () => {
    if (endPos === currItemCnt) return;

    let nextEndPos = endPos;
    if (itemsPerCnt > nextEndPos) nextEndPos = itemsPerCnt;
    nextEndPos =
      nextEndPos + itemsPerCnt > currItemCnt
        ? currItemCnt
        : nextEndPos + itemsPerCnt;

    const nextStartPos = nextEndPos - (itemsPerCnt - 1);
    const nextLeftCSSPos = -(nextStartPos - 1);
    const nextCurrPage = (nextStartPos <= 1) ? 1 : (currPage + 1);

    updatePos(nextStartPos, nextEndPos, nextLeftCSSPos, nextCurrPage);
  };

  // 2. 버튼 관련 --------
  const arrowProps = {
    startPos,
    endPos,
    itemLength: currItemCnt,
    arrowLocation,
    btnSize,
  };

  const arrowBtns = (
    <>
      <CarouselArrowBtn
        onClick={handleCarouselLeftClick}
        arrowProps={arrowProps}
        direction="L"
      >
        {leftIcon}
      </CarouselArrowBtn>
      {arrowLocation === 'top' && <span>{`${currPage} / ${maxPageCnt}`}</span>}
      <CarouselArrowBtn
        onClick={handleCarouselRightClick}
        arrowProps={arrowProps}
        direction="R"
      >
        {rightIcon}
      </CarouselArrowBtn>
    </>
  );

  return (
    <StyledCarousel cssCarouselWrapStyle={cssCarouselWrapStyle}>

      <ContentItemsWrap>
        {arrowLocation === "top" ? (
          <ArrowButtons fontSize={btnSize}>{arrowBtns}</ArrowButtons>
        ) : (
          arrowBtns
        )}

        <ContentItems
          leftPos={leftCSSPos}
          itemsPerCnt={itemsPerCnt}
          transitionProperty={transitionProperty}
          transitionDuration={transitionDuration}
        >
          {items && items.map((itemComponent, i) => (
            <ContentItem key={i} itemsPerCnt={itemsPerCnt}>
              {itemComponent}
            </ContentItem>
          ))}
        </ContentItems>

      </ContentItemsWrap>

    </StyledCarousel>
  );
};

export default Carousel;

// --- Styled Components ---
const StyledCarousel = styled.div`
  ${({ cssCarouselWrapStyle }) => cssCarouselWrapStyle && cssCarouselWrapStyle};
  position: relative;
`;

const ContentItemsWrap = styled.div`
  overflow: hidden;
`;

const ContentItems = styled.ul`
  transition-property: ${({ transitionProperty }) => transitionProperty || "all"};
  transition-duration: ${({ transitionDuration }) => transitionDuration || "0.4s"};

  display: flex;
  flex-wrap: nowrap;

  position: relative;
  left: ${({ leftPos, itemsPerCnt }) =>
    `calc((100% / ${itemsPerCnt}) * ${leftPos})`};
`;

const ContentItem = styled.li`
  // flex-grow | flex-shrink | flex-basis
  flex: ${({ itemsPerCnt }) => `1 0 calc(100% / ${itemsPerCnt})`};
  display: flex;
  justify-content: center;
`;

// 화살표 버튼 Wrapper용 (arrowLocation가 top 옵션일때만 쓰임)
const ArrowButtons = styled.div`
  display: flex;
  align-items: center;
  position: absolute;
  right: 0;
  top: -10%;

  span {
    font-size: ${({ fontSize, theme }) =>
      `calc(${fontSize} - (${
        Math.floor(changeAllToNumbers(fontSize) * 0.5) + "px"
      }))` || theme.fontSize.MM};
  }
`;
