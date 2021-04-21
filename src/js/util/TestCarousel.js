import styled from "styled-components";
import Carousel from "./Carousel";

const StyledBlock = styled.div`
  margin: 0 auto;
  margin-top: 100px;
  background-color: #e3e3e3;
  width: 200px;
`;
const TestBlock = styled.div`
  background-color: tan;
`;
const TestCarousel = () => {
  return (
    <StyledBlock>
      <h2>테스트 중입니다</h2>
      <Carousel
        itemsPerPeice={1}
        onClickItem={() => {
          console.log("click item!");
        }}
      >
        <TestBlock>test1</TestBlock>
        <TestBlock>test2</TestBlock>
        <TestBlock>test3</TestBlock>
        <TestBlock>test4</TestBlock>
      </Carousel>
    </StyledBlock>
  );
};

export default TestCarousel;
