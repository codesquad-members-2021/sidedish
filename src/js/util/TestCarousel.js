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
  height: 50px;
  box-sizing: border-box;
`;
const array = [1, 2, 3, 4, 6, 7, 8];
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
        {array.map((el) => (
          <TestBlock>el</TestBlock>
        ))}
      </Carousel>
    </StyledBlock>
  );
};

export default TestCarousel;
