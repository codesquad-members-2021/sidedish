import React, { useEffect, useRef } from 'react';

const CarouselItem = ({ item, idx, setItemWidthList }) => {
  const childRef = useRef();
  useEffect(() => {
    if (idx === 0) setItemWidthList(childRef.current.offsetWidth);
  }, []);
  return <div ref={childRef}>{item}</div>;
};

export default CarouselItem;
