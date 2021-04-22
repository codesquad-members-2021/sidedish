import {
  COLOR_GREEN,
  COLOR_LIGHTBLUE,
  COLOR_LIGHTRED,
  EVENT,
  TAG_EVENT,
  TAG_BEST,
  LAUNCHING,
  BEST,
} from '../../const';
import styled from 'styled-components';

const Tag = ({ type }) => {
  if (!type) return <div>no tag type!!!</div>;
  return {
    event: <EventTag type={type} />,
    launching: <LaunchingTag type={type} />,
    best: <BestTag type={type} />,
  }[type];
};

const EventTag = ({ type }) => {
  return (
    <TagDiv type={type}>
      <span>{TAG_EVENT}</span>
    </TagDiv>
  );
};

const LaunchingTag = ({ type }) => {
  return (
    <TagDiv type={type}>
      <span>런칭특가</span>
    </TagDiv>
  );
};

const BestTag = ({ type }) => {
  return (
    <TagDiv type={type}>
      <span>{TAG_BEST}</span>
    </TagDiv>
  );
};

export default Tag;

const TagDiv = styled.div`
  background: ${({ type }) => {
    switch (type) {
      case EVENT:
        return COLOR_GREEN;
      case LAUNCHING:
        return COLOR_LIGHTBLUE;
      case BEST:
        return COLOR_LIGHTRED;
      default:
        break;
    }
  }};
  border-radius: 5px;
  padding: 4px 16px;
  width: 97px;
  height: 28px;
  box-sizing: border-box;

  text-align: center;

  & + div {
    margin: 0 10px;
  }

  span {
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: 700;
    font-size: 14px;
    line-height: 20px;
    color: #fff;
  }
`;
