import { DETAIL } from 'const';
import styled, { css } from 'styled-components';

const Name = ({ name, type }) => {
  return <NameDiv type={type}>{name}</NameDiv>;
};
const Body = ({ body, type }) => {
  return <BodyDiv type={type}>{body}</BodyDiv>;
};

const Info = ({ name, body, type }) => {
  return (
    <InfoBoxDiv type={type}>
      <Name {...{ name, type }} />
      <Body {...{ body, type }} />
    </InfoBoxDiv>
  );
};

export default Info;

const NameDiv = styled.div`
  height: 23px;
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
`;

const InfoBoxDiv = styled.div`
  margin: 16px 0;
  ${(props) =>
    props.type === DETAIL &&
    css`
      margin: 0;
    `}
`;
