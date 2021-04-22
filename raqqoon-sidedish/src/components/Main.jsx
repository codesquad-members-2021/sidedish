import styled from 'styled-components';
import CarouselSection from 'components/carousel/CarouselSection';
import TabUI from 'components/tabUI/TabUI';

const Main = () => {
  return (
    <MainBoxDiv>
      <TabUI />
      <CarouselSection />
    </MainBoxDiv>
  );
};

export default Main;

const MainBoxDiv = styled.div`
  width: 100%;
  padding: 0 5rem;
  box-sizing: border-box;
`;
