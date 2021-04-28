import { useState, useRef, useEffect } from 'react';
import styled from 'styled-components';
import Arrow from 'components/icons/Arrow';

const Carousel = ({
  children,
  options: {
    panelCount,
    animation: { target, time, effect },
  },
}) => {
  const [position, setPosition] = useState(0);
  const outBoxRef = useRef();
  const [restCardCount, setRestCardCount] = useState(null);

  const handleClickArrowBtn = ({ currentTarget }) => {
    const direction = currentTarget.getAttribute('direction');
    const outBoxWidth = outBoxRef.current.clientWidth;
    if (direction === 'RIGHT') return moveRight(outBoxWidth);
    if (direction === 'LEFT') return moveLeft(outBoxWidth);
  };

  const moveRight = (outBoxWidth) => {
    if (restCardCount === 0) return;
    if (restCardCount < panelCount) {
      setRestCardCount(0);
      return setPosition(position - (outBoxWidth / panelCount) * restCardCount);
    }
    setRestCardCount((cardCount) => cardCount - panelCount);
    setPosition(position - outBoxWidth);
  };

  const moveLeft = (outBoxWidth) => {
    if (position >= 0) return;
    const defaultCardCount = children.length - panelCount;
    if (restCardCount + panelCount > defaultCardCount) {
      setRestCardCount(defaultCardCount);
      return setPosition(0);
    }
    setRestCardCount((cardCount) => cardCount + panelCount);
    setPosition(position + outBoxWidth);
  };

  useEffect(() => {
    if (restCardCount !== null) return;
    setRestCardCount(children.length - panelCount);
  }, [children, panelCount, restCardCount]);

  return (
    <CarouselStyled>
      <OutBox ref={outBoxRef}>
        <Items position={position} animation={{ time, effect, target }}>
          {children}
        </Items>
      </OutBox>
      <Arrow
        size={'L'}
        direction={'RIGHT'}
        onClick={(e) => handleClickArrowBtn(e)}
      />
      <Arrow
        size={'L'}
        direction={'LEFT'}
        onClick={(e) => handleClickArrowBtn(e)}
      />
    </CarouselStyled>
  );
};

export default Carousel;

const CarouselStyled = styled.div`
  position: relative;
  width: 100%;
`;

const OutBox = styled.div`
  overflow: hidden;
  position: relative;
`;

const Items = styled.div`
  display: flex;
  justify-content: space-between;
  position: relative;
  transition: ${({ animation: { target, time, effect } }) =>
    `${target} ${time}s ${effect}`};
  transform: ${({ position }) => `translateX(${position}px)`};
`;
