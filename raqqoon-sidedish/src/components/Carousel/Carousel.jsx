import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';
import { SIZE_MEDIUM } from 'const';
import useFetch from 'customHooks/useFetch';
import Card from 'components/card/Card';
import Arrow from 'components/icons/Arrow';

const Carousel = () => {
  const mainDishData = useFetch(
    'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main'
  );
  return mainDishData ? (
    <>
      <OutBox>
        <CategoryContents>
          {mainDishData.map((item) => (
            <Card key={uuidv4()} item={item} cardSize={SIZE_MEDIUM} />
          ))}
        </CategoryContents>
        <button>
          <span>모든 카테고리 보기</span>
        </button>
      </OutBox>
      <Arrow size={'L'} direction={'RIGHT'} />
      <Arrow size={'L'} direction={'LEFT'} />
    </>
  ) : (
    <div>로딩중입니다!!!!!!!</div>
  );
};

export default Carousel;

const OutBox = styled.div`
  margin-top: 2rem;
  overflow: hidden;
  position: relative;
`;

const CategoryContents = styled.div`
  display: flex;
  justify-content: space-between;
  position: relative;
`;
