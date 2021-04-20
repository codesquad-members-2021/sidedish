import styled from "styled-components";
import Carousel from "./Carousel";

const StyledBlock = styled.div`
  background: skyblue;
`;
const TestBlock = styled.div`
  background-color: tan;
`;
const TestCarousel = () => {
  return (
    <StyledBlock>
      <h2>테스트 중입니다</h2>
      <Carousel itemPerPeice={3}>
        <TestBlock>test1</TestBlock>
        <TestBlock>test2</TestBlock>
        <TestBlock>test3</TestBlock>
        <TestBlock>test4</TestBlock>
        <TestBlock>test5</TestBlock>
        <TestBlock>test6</TestBlock>
        <TestBlock>test7</TestBlock>
      </Carousel>
    </StyledBlock>
  );
};

export default TestCarousel;
