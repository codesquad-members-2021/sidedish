import styled from "styled-components";
import Carousel from "./Carousel";

const StyledBlock = styled.div`
  background-color: #e3e3e3;
  width: 700px;
`;
const TestBlock = styled.div`
  background-color: tan;
`;
const TestCarousel = () => {
  return (
    <StyledBlock>
      <h2>테스트 중입니다</h2>
      <Carousel
        itemsPerPeice={4}
        onClickItem={() => {
          console.log("click item!");
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
        <TestBlock>test9</TestBlock>
        <TestBlock>test10</TestBlock>
        <TestBlock>test11</TestBlock>
        <TestBlock>test12</TestBlock>
        <TestBlock>test13</TestBlock>
        <TestBlock>test14</TestBlock>
        <TestBlock>test15</TestBlock>
        <TestBlock>test16</TestBlock>
        <TestBlock>test17</TestBlock>
        <TestBlock>test18</TestBlock>
        <TestBlock>test19</TestBlock>
        <TestBlock>test20</TestBlock>
      </Carousel>
    </StyledBlock>
  );
};

export default TestCarousel;
