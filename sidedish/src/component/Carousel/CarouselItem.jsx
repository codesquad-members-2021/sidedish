import React, { useRef, forwardRef, useEffect, useState, useImperativeHandle } from 'react';
// import styled from 'styled-components';

const CarouselItem = ({ item, setItemWidth }) => {
  const targetRef = useRef();

  useEffect(() => {
    setItemWidth(targetRef.current.offsetWidth);
  }, []);

  return (
    <>
      <div ref={targetRef}>{item}</div>
    </>
  );
};

export default CarouselItem;
