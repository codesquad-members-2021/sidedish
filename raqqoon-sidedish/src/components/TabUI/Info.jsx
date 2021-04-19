import styled from 'styled-components';

const Name = ({ name }) => {
  return <NameDiv>{name || `[아내의쉐프] 아쉐찜닭`}</NameDiv>;
};
const Body = ({ body }) => {
  return (
    <BodyDiv>
      {body || `아내의 쉐프가 자신있게 만들어서 이름도 '아쉐찜'`}
    </BodyDiv>
  );
};

const Info = ({ name, body }) => {
  return (
    <>
      <Name name={name} />
      <Body body={body} />
    </>
  );
};

export default Info;

const NameDiv = styled.div`
  width: 384px;
  height: 23px;
  color: #333;
  margin: 8px 0px;
`;

const BodyDiv = styled.div`
  width: 384px;
  height: 20px;
  color: #828282;
  font-size: 14px;
  line-height: 20px;
  margin: 8px 0px;
`;
