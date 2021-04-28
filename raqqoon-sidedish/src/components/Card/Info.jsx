import { DETAIL, SIZE_SMALL } from 'const';
import styled, { css } from 'styled-components';

const Name = ({ name, type }) => {
  return <NameDiv type={type}>{name}</NameDiv>;
};
const Body = ({ body, type }) => {
  return <BodyDiv type={type}>{body}</BodyDiv>;
};

const Info = ({ name, body, type, cardSize }) => {
  return (
    <InfoBoxDiv type={type} {...{ cardSize }}>
      {name && <Name {...{ name, type }} />}
      <Body {...{ body, type }} />
    </InfoBoxDiv>
  );
};

export default Info;

const NameDiv = styled.div`
  color: #333;
  margin: 8px 0px;
  ${(props) =>
    props.type === DETAIL &&
    css`
      font-weight: 700;
      font-size: 24px;
      line-height: 35px;
      margin: 0;
    `}
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
  line-height: 23px;
`;

const BodyDiv = styled.div`
  height: 20px;
  color: #828282;
  font-size: 14px;
  line-height: 20px;
  margin: 8px 0px;
  ${(props) =>
    props.type === DETAIL &&
    css`
      font-size: 18px;
      line-height: 26px;
      color: #828282;
      margin: 24px 0;
    `}
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
`;

const InfoBoxDiv = styled.div`
  margin: 16px 0;
  ${({ type }) =>
    type === DETAIL &&
    css`
      margin: 0;
    `};
  ${({ cardSize }) =>
    cardSize === SIZE_SMALL &&
    css`
      width: 160px;
      margin: 0;
    `}
`;
