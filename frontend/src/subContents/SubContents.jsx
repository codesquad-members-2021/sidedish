// SubContents (Carousel Slider)
import { useEffect, useState } from "react";
import styled, { css } from "styled-components";
import { MdKeyboardArrowLeft, MdKeyboardArrowRight } from "react-icons/md";
import { cssTranslate, cssFlexAlignCenter } from "../style/CommonStyledCSS";

const SubContents = () => {
  const [startPos, setStartPos] = useState(1);
  const [endPos, setEndPos] = useState(-1);
  const [currPos, setCurrPos] = useState(0);
  
  const [turnOverCnt] = useState(4);

  const [data, setData] = useState( Array.from({length: 14}, (_, i) => i) );

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => setEndPos(data.length > turnOverCnt ? turnOverCnt : data.length), []);

  //  <  [1 2 3 4] [5 6 7 8] [7 8 (9 10)]   >
  /*
                          left          currPos      startPos      endPos
      [1 2 3 4]           0%            (0)           1             4
      [5 6 7 8]           -100%          (-4)         5             8
      [9 10 11 12]        -200%          (-8)         9             12
      [11 12 (13 14)]     -250%          (-10)        11            14
      // currPos는 ((startPos-1) * -1)
  */

  const carouselLeftClickHandler = () => {  // <
    if (startPos === 1) return;

    const nextEndPos =
      (endPos - turnOverCnt) < 1
        ? data.length
        : (endPos - turnOverCnt);
    const nextStartPos = 
      ( (nextEndPos - (turnOverCnt-1)) < 1 )
        ? 1
        : (nextEndPos - (turnOverCnt-1));
    const nextCurrPos = -(nextStartPos - 1);
    setStartPos(nextStartPos);
    setEndPos(nextEndPos);
    setCurrPos(nextCurrPos);
  };

  const carouselRightClickHandler = () => { // >
    if (endPos === data.length) return;

    // const nextEndPos =
    //   (endPos + turnOverCnt) > data.length
    //     ? data.length
    //     : (endPos + turnOverCnt);

    let nextEndPos = endPos;
    if (turnOverCnt > nextEndPos)
      nextEndPos = turnOverCnt;

    nextEndPos =
      (nextEndPos + turnOverCnt) > data.length
        ? data.length
        : (nextEndPos + turnOverCnt);

    const nextStartPos = (nextEndPos - (turnOverCnt -1 ) );
    const nextCurrPos = -(nextStartPos - 1);
    setStartPos(nextStartPos);
    setEndPos(nextEndPos);
    setCurrPos(nextCurrPos);
  };


  return (
    <StyledSubContents>

      <SubContentItemsWrapper>
        <SubContentItems currPos={currPos} turnOverCnt={turnOverCnt}>
            {data &&
              data.map((v, i) => (
                <SubContentItem key={i} turnOverCnt={turnOverCnt}>
                  {v + 1}
                </SubContentItem>
              ))}
          </SubContentItems>
      </SubContentItemsWrapper>

      <ControlButton onClick={carouselLeftClickHandler}>
        <MdKeyboardArrowLeft />
      </ControlButton>
      <ControlButton onClick={carouselRightClickHandler} control="right">
        <MdKeyboardArrowRight />
      </ControlButton>

    </StyledSubContents>
  );
};

export default SubContents;

// --- Styled Components ---
const StyledSubContents = styled.div`
  position: relative;
  height: 20vh;
  padding: ${({theme}) => theme.globalInfo.mp80};
`;

const SubContentItemsWrapper = styled.div`
  overflow: hidden;
`;

const SubContentItems = styled.ul`
  display: flex;
  flex-wrap: nowrap;
  transition: 1.5s;

  position: relative;
  left: ${({ currPos, turnOverCnt }) =>
    `calc((100% / ${turnOverCnt}) * ${currPos})`};
`;

const SubContentItem = styled.li`
  // flex-grow | flex-shrink | flex-basis
  flex: ${({turnOverCnt }) => `1 0 calc(100% / ${turnOverCnt})`};
`;

const ControlButton = styled.button`
  ${cssTranslate};
  ${cssFlexAlignCenter};
  font-size: ${({ theme }) => theme.fontSize.L};
  cursor: pointer;
  position: absolute;
  top: 0;
  ${({ control }) =>
    control === "right"
      ? css`
          right: 0;
        `
      : css`
          left: 0;
        `}
`;