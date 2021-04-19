import { EVENT } from 'const';
import styled from 'styled-components';

const Tag = ({ type }) => {
  if (!type) return <div>no tag type!!!</div>;
  return {
    event: <EventTag type={type} />,
    launching: <LaunchingTag type={type} />,
  }[type];
};

const EventTag = ({ type }) => {
  return (
    <TagDiv type={type}>
      <span>이벤트특가</span>
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

export default Tag;

const TagDiv = styled.div`
  background: ${({ type }) => (type === EVENT ? `#82D32D` : `#86C6FF`)};
  border-radius: 5px;
  padding: 4px 16px;
  width: 97px;
  height: 28px;
  box-sizing: border-box;
  margin: 0 10px;
  text-align: center;

  span {
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: 800;
    font-size: 14px;
    line-height: 20px;
    color: #fff;
  }
`;
