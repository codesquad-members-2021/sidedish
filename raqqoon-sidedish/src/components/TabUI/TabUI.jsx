import { EVENT, LAUNCHING } from 'const';
import styled from 'styled-components';
import Info from './Info';
import Price from './Price';
import Tag from './Tag';

const TabUI = () => {
  return (
    <>
      {/* data 들어갈 자리 null */}
      <Info name={null} body={null} />
      <Price normal={null} discount={`11,900원`} />
      <TagBoxDiv>
        <Tag type={EVENT} />
        <Tag type={LAUNCHING} />
        <Tag />
      </TagBoxDiv>
    </>
  );
};

export default TabUI;

const TagBoxDiv = styled.div`
  display: flex;
`;
