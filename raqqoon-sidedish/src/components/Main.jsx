import styled from 'styled-components';
import TabUI from './tabUI/TabUI';
import Carousel from './carousel/Carousel';

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
