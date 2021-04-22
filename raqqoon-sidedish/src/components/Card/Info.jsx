import styled from 'styled-components';

const Name = ({ name }) => {
  return <NameDiv>{name}</NameDiv>;
};
const Body = ({ body }) => {
  return <BodyDiv>{body}</BodyDiv>;
};

const Info = ({ name, body }) => {
  return (
    <InfoBoxDiv>
      <Name name={name} />
      <Body body={body} />
    </InfoBoxDiv>
  );
};

export default Info;

const NameDiv = styled.div`
  height: 23px;
  color: #333;
  margin: 8px 0px;
`;

const BodyDiv = styled.div`
  height: 20px;
  color: #828282;
  font-size: 14px;
  line-height: 20px;
  margin: 8px 0px;
`;

const InfoBoxDiv = styled.div`
  margin: 16px 0;
`;
