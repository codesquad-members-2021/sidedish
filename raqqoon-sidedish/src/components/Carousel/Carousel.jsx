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
  const dishList =
    dishData &&
    dishData.map((item) => (
      <Card key={uuidv4()} item={item} cardSize={SIZE_MEDIUM} />
    ));

  const handleClickArrowBtn = () => {
    moveRight();
    moveLeft();
  };

  const moveRight = () => {};

  const moveLeft = () => {};

  return dishList ? (
    <CarouselStyled>
      <OutBox>
        <CategoryContents position={1}>{dishList}</CategoryContents>
      </OutBox>
      <Arrow size={'L'} direction={'RIGHT'} />
      <Arrow size={'L'} direction={'LEFT'} />
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
  transform: ${({ position }) => `translateX(${position}px)`};
`;
