import styled from "styled-components";
import SlideTrack from './SlideTrack';
import SlideArrows from './SlideArrows';
import SlideDots from './SlideDot';

const DicoJsonSlider = (target, { props }) => {
  const { perPages, autoplay, timeInterval, loop, useNavigation, useArrow, customArrow, useCount, animationSpeed } = props;
}

const DJSliderContainer = styled.div`
`;

export default function DJSlider() {
  
  return (
    <DJSliderContainer>
      <SlideTrack/>
      <SlideArrows/>
      <SlideDots/>
    </DJSliderContainer>
  );
}
/*
  <DJSlider>
    <SlideTrack>
      <SlideList>
        <Slide>
          <ItemCard/>
          <ItemCard/>
          <ItemCard/>
        </Slide>
        <Slide>
          <ItemCard/>
          <ItemCard/>
          <ItemCard/>
        </Slide>
        <Slide>
          <ItemCard/>
          <ItemCard/>
          <ItemCard/>
        </Slide>
      </SlideList>
    </SlideTrack>
    <SlideArrows>
      <SlideLeftArrow />
      <SlideRightArrow />
    </SlideArrows>
    <SlideNavigation>
      <SlideDotted active=true/>
      <SlideDotted active=false/>
      <SlideDotted active=false/>
    </SlideNavigation>
  </DJSlider>
*/