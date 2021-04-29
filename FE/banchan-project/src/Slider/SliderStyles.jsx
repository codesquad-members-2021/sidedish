import styled from "styled-components";

const Slider = styled.div`
  overflow: hidden;
  // position: relative;
  width: ${(props) => props.sliderWidth}px;
`;

const SliderScrollBox = styled.div`
  display: flex;
  width: ${(props) => props.scrollBoxWidth}px;
  transform: translate3d(${(props) => props.X}px, 0, 0);
  transition: ${(props) => props.transition};
`;

const LeftButtonWrapper = styled.div`
  position: absolute;
  top: 50%;
  left: -5%;
  background: none;
  cursor: pointer;
`;

const RightButtonWrapper = styled.div`
  position: absolute;
  top: 50%;
  right: -5%;
  background: none;
  cursor: pointer;
`;

export { Slider, SliderScrollBox, LeftButtonWrapper, RightButtonWrapper };
