import styled from "styled-components";
import SlideItems from "./SlideItems";
import SliderArrowBtn from "./SliderArrowBtn";
import { FaChevronLeft, FaChevronRight } from "react-icons/fa";

const SlideContainerStyle = styled.div`
  h2 {
    margin-bottom: 2rem;
  }
  margin-bottom: 2.25rem;
  position: relative;
`;

const SliderArrowBtnsStyle = styled.div`
  position: absolute;
  width: calc(100% + 7rem);
  top: 50%;
  left: -3.5rem;
  z-index: -1;
  display: flex;
  justify-content: space-between;
`;

export default function SlideContainer() {
  return (
    <SlideContainerStyle>
      <h2>후기가 증명하는 베스트 반찬</h2>
      <SlideItems/>
      <SliderArrowBtnsStyle>
        <SliderArrowBtn text={<FaChevronLeft />}>
          <FaChevronLeft />
        </SliderArrowBtn>
        <SliderArrowBtn><FaChevronRight /></SliderArrowBtn>
      </SliderArrowBtnsStyle>
    </SlideContainerStyle>
  )
}