import Info from 'components/Card/Info';
import Price from 'components/Card/Price';
import Tag from 'components/Card/Tag';
import { EVENT, LAUNCHING } from 'const';
import styled from 'styled-components';
import Img from './Img';

const Card = () => {
  return (
    <CardBoxDiv>
      {/* data 들어갈 자리 null */}
      <Img />
      <Info name={null} body={null} />
      <Price normal={null} discount={`11,900원`} />
      <TagBoxDiv>
        <Tag type={EVENT} />
        <Tag type={LAUNCHING} />
      </TagBoxDiv>
    </CardBoxDiv>
  );
};

export default Card;

const CardBoxDiv = styled.div`
  width: 384px;
  height: 540px;
  outline: 1px solid blue;
  margin: 10px;
`;

const TagBoxDiv = styled.div`
  display: flex;
`;
