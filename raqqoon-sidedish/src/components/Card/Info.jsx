import { DETAIL } from 'const';
import styled, { css } from 'styled-components';
import getInfoBoxStyle from 'util/getInfoBoxStyle';

const Name = ({ name, type }) => {
  return <NameDiv type={type}>{name}</NameDiv>;
};
const Body = ({ body, type, cardSize }) => {
  return (
    <BodyDiv type={type} cardSize={cardSize}>
      {body}
    </BodyDiv>
  );
};

const Info = ({ name, body, type, cardSize }) => {
  return (
    <InfoBoxDiv type={type} {...{ cardSize }}>
      {name && <Name {...{ name, type }} />}
      {body && <Body {...{ body, type }} />}
    </InfoBoxDiv>
  );
};

export default Info;

const NameDiv = styled.div`
  color: #333;
  margin: 8px 0px;
  line-height: 23px;
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
`;

const BodyDiv = styled.div`
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
    cardSize &&
    css`
      width: ${getInfoBoxStyle(cardSize)};
      margin: 0;
    `}
`;
