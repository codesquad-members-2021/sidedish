import styled from 'styled-components';
import Carousel from './carousel/Carousel';
import TabUI from './tabUI/TabUI';

const Main = () => {
  return (
    <MainBoxDiv>
      <TabUI />
      <Carousel />
    </MainBoxDiv>
  );
};

export default Main;

const MainBoxDiv = styled.div`
  width: 100vw;
  padding: 0 5rem;
  box-sizing: border-box;
`;
