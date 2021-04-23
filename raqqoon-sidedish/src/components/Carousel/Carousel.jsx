import { useState } from 'react';
import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';
import { SIZE_MEDIUM } from 'const';
import useFetch from 'customHooks/useFetch';
import Card from 'components/card/Card';
import Arrow from 'components/icons/Arrow';

const Carousel = ({ path }) => {
  const dishData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/${path}`
  );

  const [position, setPosition] = useState(0);

  const dishList =
    dishData &&
    dishData.map((item) => (
      <Card key={uuidv4()} item={item} cardSize={SIZE_MEDIUM} />
    ));

  // 너비 구하기
  // 너비 / 카드 개수
  // 몫 만큼 움직였다면, disabled
  // 나머지에 카드개수 * 카드 너비 만큼 이동
  const handleClickRightArrow = () => {
    setPosition(position - 1280);
  };

  const handleClickLeftArrow = () => {
    setPosition(position + 1280);
  };

  return dishList ? (
    <CarouselStyled>
      <OutBox>
        <CategoryContents position={position}>{dishList}</CategoryContents>
      </OutBox>
      <Arrow size={'L'} direction={'RIGHT'} onClick={handleClickRightArrow} />
      <Arrow size={'L'} direction={'LEFT'} onClick={handleClickLeftArrow} />
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
  transform: transition
  transform: ${({ position }) => `translateX(${position}px)`};
`;
