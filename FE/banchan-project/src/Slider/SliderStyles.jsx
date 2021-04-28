import styled from "styled-components";

const SliderCardWrapper = styled.div`
  outline: red solid;
  position: relative;
  overflow: hidden;
  margin-top: 4px;
  width: 1250px;
  height: 500px;
  padding: 0px;
`;

const SliderCard = styled.li`
  background-color: #939351;
  height: 400px;
  width: 400px;
  margin: 8px;
`;
const SliderCardList = styled.ul`
  position: absolute;
  outline: blue solid;
  width: 2000px;
  height: 500px;
  display: flex;
  justify-content: space-space-between;
  align-items: center;
`;

const Style = {
  SliderCardWrapper,
  SliderCard,
  SliderCardList,
};
export { Style };
