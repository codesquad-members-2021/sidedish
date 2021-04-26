import styled from 'styled-components';
import Info from 'components/card/Info';
import Price from 'components/card/Price';
import Tag from 'components/card/Tag';
import {
  COLOR_GREEN,
  COLOR_LIGHTBLUE,
  COLOR_LIGHTRED,
  EVENT,
  TAG_EVENT,
  TAG_BEST,
  TAG_LAUNCHING,
  LAUNCHING,
  BEST,
} from 'const';
import { v4 as uuidv4 } from 'uuid';

const DetailInfo = () => {
  const badge = [TAG_EVENT];
  return (
    <DetailInfoBox>
      <Info name="test" body="test" />
      <Price normal="test" discount="test" />
      {badge && (
        <TagBoxDiv>
          {badge.map((badge) => {
            switch (badge) {
              case TAG_EVENT:
                return <Tag type={EVENT} key={uuidv4()} />;
              case TAG_LAUNCHING:
                return <Tag type={LAUNCHING} key={uuidv4()} />;
              case TAG_BEST:
                return <Tag type={BEST} key={uuidv4()} />;
              default:
                break;
            }
            return badge;
          })}
        </TagBoxDiv>
      )}
    </DetailInfoBox>
  );
};

export default DetailInfo;

const DetailInfoBox = styled.div`
  border: 1px solid tomato;
  width: 440px;
`;

const TagBoxDiv = styled.div`
  display: flex;
`;
