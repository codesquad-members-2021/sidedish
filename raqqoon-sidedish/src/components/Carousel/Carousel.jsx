import { useState, useRef, useEffect } from 'react';
import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';
import { SIZE_MEDIUM } from 'const';
import useFetch from 'customHooks/useFetch';
import Card from 'components/card/Card';
import Arrow from 'components/icons/Arrow';

const Carousel = ({ path, panelCount }) => {
  const dishData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/${path}`
  );

  const [position, setPosition] = useState(0);
  const outBoxRef = useRef();
  const [restCardCount, setRestCardCount] = useState(null);
  const dishList =
    dishData &&
    dishData.map((item) => (
      <Card key={uuidv4()} item={item} cardSize={SIZE_MEDIUM} />
    ));

  const handleClickArrowBtn = ({ currentTarget }) => {
    const direction = currentTarget.getAttribute('direction');
    const outBoxWidth = outBoxRef.current.clientWidth;
    if (direction === 'RIGHT') return moveRight(outBoxWidth);
    if (direction === 'LEFT') return moveLeft(outBoxWidth);
  };

  const moveRight = (outBoxWidth) => {
    if (restCardCount === 0) return;
    if (restCardCount < panelCount) {
      return setPosition(position - (outBoxWidth / panelCount) * restCardCount);
    }
    setRestCardCount((cardCount) => cardCount - panelCount);
    setPosition(position - outBoxWidth);
  };

  const moveLeft = (outBoxWidth) => {
    if (position === 0) return;
    if (restCardCount > dishList.length) {
      const itemToMove = restCardCount - dishList.length;
      return setPosition(
        position + (outBoxWidth / panelCount) * (panelCount - itemToMove)
      );
    }
    setRestCardCount((cardCount) => cardCount + panelCount);
    setPosition(position + outBoxWidth);
  };

  useEffect(() => {
    if (restCardCount !== null) return;
    dishList && setRestCardCount(dishList.length - panelCount);
  }, [dishList, panelCount, restCardCount]);

  return dishList ? (
    <CarouselStyled>
      <OutBox ref={outBoxRef}>
        <CategoryContents position={position}>{dishList}</CategoryContents>
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
  ) : (
    <div>로딩중입니다!!!!!!!</div>
  );
};

export default Carousel;

const CarouselStyled = styled.div`
  position: relative;
  width: 100%;
`;

const OutBox = styled.div`
  margin-top: 2rem;
  overflow: hidden;
  position: relative;
`;

const CategoryContents = styled.div`
  display: flex;
  justify-content: space-between;
  position: relative;
  transition: transform 0.5s ease-in-out;
  transform: ${({ position }) => `translateX(${position}px)`};
`;
