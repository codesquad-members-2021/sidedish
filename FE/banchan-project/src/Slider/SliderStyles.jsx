import styled from "styled-components";

const Slider = styled.div`
  //가장 바깥
  position: relative;
  width: 1280px;
  outline: #1db683 solid;
`;
const SliderCardWrapper = styled.div`
  //숨기는 애
  outline: red solid;
  overflow: hidden;
  margin-top: 4px;
  width: 1280px;
  /* height: 500px; */
`;

const SliderCard = styled.li`
  //카드
  background-color: #8caef7;
  height: 308px;
  width: 308px;
  margin-right: 16px;
  font-size: 50px;
`;
const SliderCardList = styled.ul`
  //카드 움직이는 애
  outline: blue solid;
  width: 4000px;
  display: flex;
  justify-content: space-space-between;
  align-items: center;
  transform: translate3d(${props => props.X}px, 0, 0); //여기 바꿔주기
  transition: all 1s;
`;
const ButtonsWrapper = styled.div`
  position: absolute;
  /* outline: #ff00b3 solid; */
  top: 0px;
  width: 1280px;
  height: 308px;
`;
//disabled 적용하려고 div -> button
const LeftButtonWrapper = styled.button`
  position: absolute;
  top: 50%;
  left: -5%;
  background: none;
  cursor: pointer;
`;

const RightButtonWrapper = styled.button`
  position: absolute;
  top: 50%;
  right: -5%;
  background: none;
  cursor: pointer;
`;

const Style = {
  Slider,
  SliderCardWrapper,
  SliderCard,
  SliderCardList,
  ButtonsWrapper,
  LeftButtonWrapper,
  RightButtonWrapper,
};
export { Style };
