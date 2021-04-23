import React, { useState, useEffect, useRef, useImperativeHandle, forwardRef } from 'react';
import styled from 'styled-components';

const StyledSlider = styled.div`
  display: inline-block;
  width: 100%;
  position: relative;
`;

const SliderList = styled.ul`
  width: ${props => props.width + "px"};
  display: flex;
  justify-content: space-between;
  position: absolute;
  top: 0;
  left: ${props => props.positionLeft + "px"};
  transition: left 300ms linear;
  box-shadow: 0 0 0 1px blue inset;
`;

const SliderListItem = styled.li`
  
`;

// TODO: default slide buttons, disable slide button

function Slider({ itemCntOnView, items, defaultBtn = true, pageable = false }, ref) {
  const [currIdx, setCurrIdx] = useState(0);
  const [positionLeft, setPositionLeft] = useState(0);
  const [totalWidth, setTotalWidth] = useState();
  const [betweenMargin, setBetweenMargin] = useState();
  // const [currPage, setCurrPage] = useState(1);
  // const [totalPage] = useState(Math.ceil(items.length / itemCntOnView));
  const styledRef = useRef();
  const itemRef = useRef();

  useEffect(() => {
    const newBetweenMargin = _calcBetweenMargin();
    setBetweenMargin(newBetweenMargin);
    setTotalWidth(_calcTotalWidth(newBetweenMargin));
  }, [itemRef]);

  useEffect(() => {
    if (currIdx === undefined || betweenMargin === undefined)
      return;
    
    const newPositionLeft = _calcPositionLeft(currIdx, betweenMargin);
    setPositionLeft(newPositionLeft);
  }, [currIdx, betweenMargin]);

  useImperativeHandle(ref, () => ({
    slideToLeft,
    slideToRight,
    // getCurrPage: () => currPage,
    // getTotalPage: () => totalPage,
  }));

  const _calcPositionLeft = (currIdx, betweenMargin) => {
    return (itemRef.current.offsetWidth + betweenMargin) * currIdx * -1;
  }

  const _calcBetweenMargin = () => {
    const totalItemWidthOnView = itemCntOnView * itemRef.current.offsetWidth;
    return (styledRef.current.offsetWidth - totalItemWidthOnView) / (itemCntOnView - 1);
  }
  
  const _calcTotalWidth = (betweenMargin) => {
    return (itemRef.current.offsetWidth + betweenMargin) * items.length - betweenMargin;
  }

  const getNextIdx = () => {
    // TODO: implement using 'pageable'
  }

  const getPrevIdx = () => {
    // TODO: implement using 'pageable'
  }

  const slideToLeft = () => {
    setCurrIdx(currIdx - itemCntOnView);
  }

  const slideToRight = () => {
    setCurrIdx(currIdx + itemCntOnView);
  }

  const renderItems = () => {
    return items.slice(1).reduce((result, item, idx) => {
      return result.concat(
        <SliderListItem key={idx}>
          {item}
        </SliderListItem>);
    }, [
      <SliderListItem key={-1} ref={itemRef}>
        {items[0]}
      </SliderListItem>
    ]);
  }

  return (
    <StyledSlider ref={styledRef}>
      <SliderList
        width={totalWidth?.toString() ?? "0"}
        positionLeft={positionLeft.toString()}>
        {renderItems()}
      </SliderList>
    </StyledSlider>
  );
}

export default forwardRef(Slider);
