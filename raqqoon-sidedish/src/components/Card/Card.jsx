import Info from 'components/card/Info';
import Price from 'components/card/Price';
import Tag from 'components/card/Tag';
import { EVENT, LAUNCHING } from 'const';
import styled from 'styled-components';
import Img from './Img';

const Card = ({ cardSize }) => {
  return (
    <CardBoxDiv>
      {/* data 들어갈 자리 null */}
      <Img cardSize={cardSize} />
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
  width: fit-content;
  margin: 10px 5px;

  &:first-child {
    margin-left: 10px;
  }

  &:last-child {
    margin-right: 10px;
  }
`;

const TagBoxDiv = styled.div`
  display: flex;
`;
