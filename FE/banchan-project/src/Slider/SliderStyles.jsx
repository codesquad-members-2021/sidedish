import styled from "styled-components";

const Slider = styled.div`
  position: relative;
  width: ${(props) => props.sliderWidth}px;
`;

const SliderViewer = styled.div`
  overflow: hidden;
`;

const SliderScrollBox = styled.div`
  display: flex;

  width: ${(props) => props.scrollBoxWidth}px;
  transform: translate3d(${(props) => props.X}px, 0, 0);
  transition: ${(props) => props.transition};
`;

const LeftButtonWrapper = styled.button`
  position: absolute;
  top: 50%;
  left: -5%;
  background: none;
  cursor: pointer;
  opacity: ${(props) => props._opacity};
`;

const RightButtonWrapper = styled.button`
  position: absolute;
  top: 50%;
  right: -5%;
  background: none;
  cursor: pointer;
  opacity: ${(props) => props._opacity};
`;

export {
  Slider,
  SliderViewer,
  SliderScrollBox,
  LeftButtonWrapper,
  RightButtonWrapper,
};
