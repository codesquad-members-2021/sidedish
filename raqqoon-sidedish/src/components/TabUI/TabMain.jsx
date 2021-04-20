import Card from 'components/card/Card';
import { SIZE_LARGE } from 'const';
import styled from 'styled-components';

const TabMain = () => {
  return (
    <TabMainBoxDiv>
      <Card type={SIZE_LARGE} />
      <Card type={SIZE_LARGE} />
      <Card type={SIZE_LARGE} />
    </TabMainBoxDiv>
  );
};

export default TabMain;

const TabMainBoxDiv = styled.div`
  display: flex;
  background: #eef4fa;
  box-shadow: 0px 1px 30px rgba(224, 224, 224, 0.3);
  border-radius: 0px 5px 5px 5px;
`;
