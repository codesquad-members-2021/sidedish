import styled from "styled-components";
import Carousel from "./Carousel";

const StyledBlock = styled.div`
  margin: 0 auto;
  margin-top: 100px;
  background-color: #e3e3e3;
  width: 500px;
`;
const TestBlock = styled.div`
  background-color: tan;
  width: 90px;
  height: 50px;
  box-sizing: border-box;
`;
const TestCarousel = () => {
  return (
    <StyledBlock>
      <h2>테스트 중입니다</h2>
      <Carousel
        itemsPerPeice={5}
        autoFit
        gap={"10px"}
        onClickItem={({ target }) => {
          console.log(1, target);
        }}
      >
        <TestBlock>test1</TestBlock>
        <TestBlock>test2</TestBlock>
        <TestBlock>test3</TestBlock>
        <TestBlock>test4</TestBlock>
        <TestBlock>test5</TestBlock>
        <TestBlock>test6</TestBlock>
        <TestBlock>test7</TestBlock>
        <TestBlock>test8</TestBlock>
      </Carousel>
    </StyledBlock>
  );
};

export default TestCarousel;
